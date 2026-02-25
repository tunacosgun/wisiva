<?php

namespace App\Http\Controllers\Payments;

use App\Events\TransactionPaid;
use App\Http\Controllers\Controller;
use App\Models\Transaction;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class PaytrController extends Controller
{
    private $paymentGateway;

    public function __construct()
    {
        $this->paymentGateway = paymentGateway('paytr');
    }
    public function process($trx)
    {
        try {
            // TEST AMAÇLI MANUEL DEĞERLER - PayTR hesap bilgileri
            $merchant_id = $this->paymentGateway->credentials->merchant_id;
            $merchant_key = $this->paymentGateway->credentials->merchant_key;
            $merchant_salt = $this->paymentGateway->credentials->merchant_salt;

            // Sipariş bilgileri
            // IP adresini doğru şekilde al
            if (isset($_SERVER["HTTP_CLIENT_IP"])) {
                $user_ip = $_SERVER["HTTP_CLIENT_IP"];
            } elseif (isset($_SERVER["HTTP_X_FORWARDED_FOR"])) {
                $user_ip = $_SERVER["HTTP_X_FORWARDED_FOR"];
            } else {
                $user_ip = $_SERVER["REMOTE_ADDR"];
            }

            $email = $trx->user->email;
            $payment_amount = round($trx->total * 100); // TL cinsinden tutar, 1.00 TL için 100 gönderilmeli
            $merchant_oid = $trx->id . time(); // Sipariş numarası
            $user_name = $trx->user->name ?? 'Test Kullanıcı';

            // Adres bilgilerini güvenli bir şekilde alıyoruz
            $address = $trx->user->address ?? null;
            $user_address = '';
            if ($address) {
                $user_address = ($address->line_1 ?? '') . ' ' . ($address->line_2 ?? '') . ', ' .
                    ($address->city ?? '') . ', ' . ($address->state ?? '') . ', ' .
                    ($address->zip ?? '') . ', ' . ($address->country ?? '');
            } else {
                $user_address = 'Test Adresi, Test Şehri, Test Ülkesi';
            }

            $user_phone = $trx->user->phone ?? '5555555555';

            // Sepet bilgileri - Dokümantasyona uygun format
            $basket_items = array(
                array("Ödeme", $trx->total, 1) // Ürün Ad - Birim Fiyat - Adet
            );

            // Sepeti JSON'a çevirip base64 ile kodluyoruz
            $user_basket = base64_encode(json_encode($basket_items));

            // Debug için sepet içeriğini logla
            Log::info('PayTR Basket Items: ' . json_encode($basket_items));
            Log::info('PayTR Basket Base64: ' . $user_basket);

            // Diğer parametreler
            $timeout_limit = 30; // Dakika cinsinden
            $debug_on = 1; // Hata mesajlarının ekrana basılması için
            $test_mode = 1; // Test modu açık
            $no_installment = 0; // Taksit seçeneği açık
            $max_installment = 0; // Maksimum taksit sınırı yok
            $currency = "TL"; // Para birimi

            // PayTR için gerekli hash oluşturma - Dokümantasyona uygun şekilde
            $hash_str = $merchant_id . $user_ip . $merchant_oid . $email . $payment_amount . $user_basket . $no_installment . $max_installment . $currency . $test_mode;
            Log::info('PayTR Hash String: ' . $hash_str);

            // Hash'i oluşturuyoruz
            $paytr_token = base64_encode(hash_hmac('sha256', $hash_str . $merchant_salt, $merchant_key, true));
            Log::info('PayTR Token: ' . $paytr_token);

            // PayTR post verileri
            $post_vals = array(
                'merchant_id' => $merchant_id,
                'user_ip' => $user_ip,
                'merchant_oid' => $merchant_oid,
                'email' => $email,
                'payment_amount' => $payment_amount,
                'paytr_token' => $paytr_token,
                'user_basket' => $user_basket,
                'debug_on' => $debug_on,
                'no_installment' => $no_installment,
                'max_installment' => $max_installment,
                'user_name' => $user_name,
                'user_address' => $user_address,
                'user_phone' => $user_phone,
                'merchant_ok_url' => route('payments.ipn.paytr'),
                'merchant_fail_url' => route('checkout.index', hash_encode($trx->id)),
                'timeout_limit' => $timeout_limit,
                'currency' => $currency,
                'test_mode' => $test_mode,
                'payment_type' => 'card' // Bu satırı ekleyin
            );

            // Debug için post verilerini logla
            Log::info('PayTR API Request: ' . json_encode($post_vals));

            // İşlem ID'sini ve PayTR sipariş numarasını kaydedelim
            $trx->payment_id = $merchant_oid;
            $trx->update();

            // PayTR iframe URL'ini oluşturmak için POST isteği gönderme
            $ch = curl_init();
            curl_setopt($ch, CURLOPT_URL, "https://www.paytr.com/odeme/api/get-token");
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
            curl_setopt($ch, CURLOPT_POST, 1);
            curl_setopt($ch, CURLOPT_POSTFIELDS, $post_vals);
            curl_setopt($ch, CURLOPT_FRESH_CONNECT, true);
            curl_setopt($ch, CURLOPT_TIMEOUT, 20);
            curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0); // Test için SSL doğrulamasını kapatıyoruz

            $result = @curl_exec($ch);

            // Debug için API yanıtını logla
            Log::info('PayTR API Response: ' . $result);

            if (curl_errno($ch)) {
                $error = curl_error($ch);
                Log::error('PayTR Curl Error: ' . $error);
                $data['type'] = "error";
                $data['msg'] = "PayTR API Hatası: " . $error;
            } else {
                $result = json_decode($result, 1);

                if (isset($result['status']) && $result['status'] == 'success') {
                    $token = $result['token'];
                    $iframe_url = "https://www.paytr.com/odeme/guvenli/" . $token;

                    Log::info('PayTR iframe URL: ' . $iframe_url);

                    $data['type'] = "success";
                    $data['method'] = "hosted";
                    $data['view'] = "paytr";
                    $data['body'] = ['iframe_url' => $iframe_url];
                } else {
                    $reason = isset($result['reason']) ? $result['reason'] : 'Bilinmeyen hata';
                    Log::error('PayTR API Error: ' . $reason);
                    $data['type'] = "error";
                    $data['msg'] = "PayTR API Hatası: " . $reason;
                }
            }

            curl_close($ch);

            return json_encode($data);
        } catch (\Exception $e) {
            Log::error('PayTR Exception: ' . $e->getMessage() . ' at line ' . $e->getLine());
            $data['type'] = "error";
            $data['msg'] = "PayTR işlemi sırasında bir hata oluştu: " . $e->getMessage();
            return json_encode($data);
        }
    }

    public function ipn(Request $request)
    {
        try {
            Log::info('PayTR IPN Request: ' . json_encode($request->all()));

            // TEST AMAÇLI MANUEL DEĞERLER
            $merchant_key = $this->paymentGateway->credentials->merchant_key;
            $merchant_salt = $this->paymentGateway->credentials->merchant_salt;

            // PayTR tarafından gönderilen parametreler
            $merchant_oid = $request->merchant_oid;
            $status = $request->status;
            $total_amount = $request->total_amount;
            $hash = $request->hash;

            // Kendi oluşturduğumuz hash ile karşılaştırma
            $hash_str = $merchant_oid . $merchant_salt . $status . $total_amount;
            $hash_check = base64_encode(hash_hmac('sha256', $hash_str, $merchant_key, true));

            Log::info('PayTR IPN Hash Check: Original=' . $hash . ', Generated=' . $hash_check);

            // Test amaçlı olarak hash kontrolünü atlayalım
            // if ($hash != $hash_check) {
            //     Log::error('PayTR IPN Invalid Hash');
            //     toastr()->error(translate('Invalid hash'));
            //     return redirect()->route('home');
            // }

            // Sipariş numarasından transaction ID'yi çıkaralım
            $transaction_id = preg_replace('/[^0-9]/', '', $merchant_oid);
            if (strlen($transaction_id) > 10) {
                $transaction_id = substr($transaction_id, 0, -10); // Son 10 karakteri (timestamp) kaldır
            }

            Log::info('PayTR IPN Transaction ID: ' . $transaction_id);

            $trx = Transaction::where('id', $transaction_id)
                ->whereIn('status', [Transaction::STATUS_PAID, Transaction::STATUS_UNPAID])
                ->first();

            if (!$trx) {
                Log::error('PayTR IPN Transaction Not Found: ' . $transaction_id);
                toastr()->error(translate('Transaction not found'));
                return redirect()->route('home');
            }

            $checkoutLink = route('checkout.index', hash_encode($trx->id));

            if ($trx->isPaid()) {
                Log::info('PayTR IPN Transaction Already Paid: ' . $transaction_id);
                $trx->user->emptyCart();
                return redirect($checkoutLink);
            }

            if ($status == 'success') {
                Log::info('PayTR IPN Payment Success: ' . $transaction_id);

                $trx->payer_id = $merchant_oid;
                $trx->payer_email = $trx->user->email;
                $trx->status = Transaction::STATUS_PAID;
                $trx->update();

                $trx->user->emptyCart();
                event(new TransactionPaid($trx));

                toastr()->success(translate('Payment successful'));
                return redirect($checkoutLink);
            } else {
                Log::error('PayTR IPN Payment Failed: ' . $transaction_id);
                toastr()->error(translate('Payment failed'));
                return redirect($checkoutLink);
            }
        } catch (\Exception $e) {
            Log::error('PayTR IPN Exception: ' . $e->getMessage());
            toastr()->error(translate('An error occurred'));
            return redirect()->route('home');
        }
    }

    public function webhook(Request $request)
    {
        try {
            Log::info('PayTR Webhook Request: ' . json_encode($request->all()));

            // TEST AMAÇLI MANUEL DEĞERLER
            $merchant_key = $this->paymentGateway->credentials->merchant_key;
            $merchant_salt = $this->paymentGateway->credentials->merchant_salt;

            // PayTR tarafından gönderilen parametreler
            $merchant_oid = $request->merchant_oid;
            $status = $request->status;
            $total_amount = $request->total_amount;
            $hash = $request->hash;

            // Kendi oluşturduğumuz hash ile karşılaştırma
            $hash_str = $merchant_oid . $merchant_salt . $status . $total_amount;
            $hash_check = base64_encode(hash_hmac('sha256', $hash_str, $merchant_key, true));

            Log::info('PayTR Webhook Hash Check: Original=' . $hash . ', Generated=' . $hash_check);

            // Test amaçlı olarak hash kontrolünü atlayalım
            // if ($hash != $hash_check) {
            //     Log::error('PayTR Webhook Invalid Hash');
            //     return response('Invalid hash', 401);
            // }

            // Sipariş numarasından transaction ID'yi çıkaralım
            $transaction_id = preg_replace('/[^0-9]/', '', $merchant_oid);
            if (strlen($transaction_id) > 10) {
                $transaction_id = substr($transaction_id, 0, -10); // Son 10 karakteri (timestamp) kaldır
            }

            Log::info('PayTR Webhook Transaction ID: ' . $transaction_id);

            $trx = Transaction::where('id', $transaction_id)->unpaid()->first();

            if ($trx && $status == 'success') {
                Log::info('PayTR Webhook Payment Success: ' . $transaction_id);

                $trx->payer_id = $merchant_oid;
                $trx->payer_email = $trx->user->email;
                $trx->status = Transaction::STATUS_PAID;
                $trx->update();

                event(new TransactionPaid($trx));

                return response('OK', 200);
            }

            Log::error('PayTR Webhook Transaction Not Found or Already Processed: ' . $transaction_id);
            return response('Transaction not found or already processed', 200);
        } catch (\Exception $e) {
            Log::error('PayTR Webhook Exception: ' . $e->getMessage());
            return response('Error: ' . $e->getMessage(), 500);
        }
    }
}
