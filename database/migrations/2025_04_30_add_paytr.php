<?php

use App\Models\PaymentGateway;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddPaytrPaymentGateway extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        $paymentGateway = new PaymentGateway();
        $paymentGateway->name = 'PayTR';
        $paymentGateway->alias = 'paytr';
        $paymentGateway->logo = 'assets/img/payments/paytr.png';
        $paymentGateway->fees = 0; // Ücretleri buradan ayarlayabilirsiniz
        $paymentGateway->is_manual = false;
        $paymentGateway->mode = PaymentGateway::MODE_SANDBOX;
        $paymentGateway->status = PaymentGateway::STATUS_INACTIVE;
        $paymentGateway->credentials = json_encode([
            'merchant_id' => '',
            'merchant_key' => '',
            'merchant_salt' => '',
        ]);
        $paymentGateway->save();
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        PaymentGateway::where('alias', 'paytr')->delete();
    }
}