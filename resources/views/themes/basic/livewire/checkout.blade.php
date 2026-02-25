<div>
    <div class="hero-banner">
        <div class="container text-center">
            <h2>{{ translate('Sepet Özeti') }}</h2>
            <p class="text-center w-100 mx-auto">{{ translate('Bu adımda satın almak istediğiniz hizmet ve ürünleri tüm şeffaflığıyla inceleyebilir ve düzenleyebilirsiniz.') }}</p>
        </div>
        <div class="cart-progress-area">
            <div class="cpa-top">
                <div class="extra-50-left">
                    <h5> <b>01.</b> {{ translate('Sepet Özeti') }}</h5>
                </div>
                <div class="extra-50-left no-pass" id="step2">
                    <h5><b>02.</b> {{ translate('Ödeme Yap') }}</h5>
                </div>
            </div>
            <div class="cpa-bottom basket">
                <span></span>
            </div>
        </div>
    </div>
    <div class="row g-4">
        <div class="col-12 col-xl-7 order-2 order-xl-1">
            <form id="checkoutForm" action="{{ route('checkout.process', hash_encode($trx->id)) }}" method="POST">
                @csrf
                <!-- Ödeme Yöntemi Bölümü -->
                <div class="extra-services mb-4">
                    <div class="extra-header">
                        <div class="extra-left extra-100">{{ translate('Ödeme Yöntemi') }}</div>
                    </div>
                    <div class="extra-body payment-methods-container">
                        <div class="payment-methods-grid">
                            @foreach ($paymentGateways as $paymentGateway)
                            <div class="payment-method-item">
                                <input class="payment-radio" type="radio" name="payment_method" wire:model="payment_method" wire:change="updateSummary" value="{{ $paymentGateway->alias }}" id="{{ $paymentGateway->alias }}" @checked($payment_method == $paymentGateway->alias)>
                                <label class="payment-label" for="{{ $paymentGateway->alias }}">
                                    <div class="payment-img">
                                        <img src="{{ $paymentGateway->getLogoLink() }}" alt="{{ $paymentGateway->name }}">
                                    </div>
                                    <div class="payment-name">{{ $paymentGateway->name }}</div>
                                    @if ($paymentGateway->isWallet())
                                    <div class="payment-balance">{{ getAmount(authUser()->balance) }}</div>
                                    @endif
                                </label>
                            </div>
                            @endforeach
                        </div>
                    </div>
                </div>

                <!-- Fatura Adresi Bölümü -->
                <div class="extra-services">
                    <div class="extra-header">
                        <div class="extra-left extra-100">{{ translate('Fatura Adresi') }}</div>
                    </div>
                    <div class="extra-body">
                        <div class="billing-form">
                            <div class="form-row">
                                <div class="form-group half">
                                    <label class="form-label">{{ translate('Ad') }}</label>
                                    <input type="text" class="form-input" value="{{ authUser()->firstname }}" disabled>
                                </div>
                                <div class="form-group half">
                                    <label class="form-label">{{ translate('Soyad') }}</label>
                                    <input type="text" class="form-input" value="{{ authUser()->lastname }}" disabled>
                                </div>
                            </div>

                            <div class="form-row">
                                <div class="form-group full">
                                    <label class="form-label">{{ translate('Adres satırı 1') }}</label>
                                    <input type="text" wire:model="address_line_1" name="address_line_1" class="form-input" required>
                                </div>
                            </div>

                            <div class="form-row">
                                <div class="form-group full">
                                    <label class="form-label">{{ translate('Adres satırı 2') }}</label>
                                    <input type="text" wire:model="address_line_2" name="address_line_2" class="form-input">
                                </div>
                            </div>

                            <div class="form-row">
                                <div class="form-group third">
                                    <label class="form-label">{{ translate('İl') }}</label>
                                    <input type="text" wire:model="city" name="city" class="form-input" required>
                                </div>
                                <div class="form-group third">
                                    <label class="form-label">{{ translate('İlçe') }}</label>
                                    <input type="text" wire:model="state" name="state" class="form-input" required>
                                </div>
                                <div class="form-group third">
                                    <label class="form-label">{{ translate('Posta kodu') }}</label>
                                    <input type="text" wire:model="zip" name="zip" class="form-input" required>
                                </div>
                            </div>

                            <div class="form-row">
                                <div class="form-group full">
                                    <label class="form-label">{{ translate('Ülke') }}</label>
                                    <select wire:model="country" wire:change="updateSummary" name="country" class="form-select" required>
                                        <option value="">--</option>
                                        @foreach (countries() as $countryCode => $countryName)
                                        <option value="{{ $countryCode }}" @selected($countryCode == $country)>
                                            {{ $countryName }}
                                        </option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>

            <!-- Mobil Görünüm için Güvenli Ödeme Bilgisi -->
            <div class="secure-payment-box d-block d-xl-none mt-4">
                <div class="secure-payment-icon">
                    <i class="fas fa-shield-alt"></i>
                </div>
                <div class="secure-payment-text">
                    <span class="secure-payment-title">{{ translate('SSL Güvenli Ödeme') }}</span>
                    <p class="secure-payment-desc">
                        {{ translate('Bilgileriniz 256-bit SSL şifrelemesiyle korunmaktadır') }}
                    </p>
                </div>
            </div>

            <!-- Mobil Görünüm için Devam Et Butonu -->
            <div class="d-block d-xl-none mt-4">
                <button form="checkoutForm" class="continue-btn">{{ translate('Devam Et') }}</button>
            </div>
        </div>
        <div class="col-12 col-xl-5 order-1 order-xl-2">
            <div class="extra-services">
                <div class="extra-header">
                    <div class="extra-left extra-100">{{ translate('Sipariş Özeti') }}</div>
                </div>
                <div class="extra-body">
                    @if ($trx->isTypePurchase())
                    @foreach ($trx->trxItems as $trxItem)
                    @php
                    $item = $trxItem->item;
                    @endphp
                    <div class="extra-row">
                        <div class="extra-row-left">
                            <a href="{{ $item->getLink() }}" class="product-image-small">
                                <img src="{{ $item->getThumbnailLink() }}" alt="{{ $item->name }}">
                            </a>
                            <div class="product-details">
                                <span class="erl-header text-truncate">{{ $item->name }}</span>
                                <div class="product-meta">
                                    <span class="erl-quantity">{{ translate('Lisans') }}:
                                        <span class="text-muted">
                                            {{ $trxItem->isLicenseTypeRegular() ? translate('Regular') : translate('Extended') }}
                                        </span>
                                    </span>
                                    <span class="erl-quantity">{{ translate('Adet') }}:
                                        <span class="text-muted">{{ $trxItem->quantity }}</span>
                                    </span>
                                    <span class="erl-quantity">{{ translate('Fiyat') }}:
                                        <span class="text-muted">{{ getAmount($trxItem->price) }}</span>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class="extra-row-right">
                            <span class="erl-info">{{ getAmount($trxItem->total) }}</span>
                        </div>
                    </div>
                    @if ($trxItem->support)
                    <div class="extra-row support-row">
                        <div class="extra-row-left">
                            <span class="support-title">{{ $trxItem->support->title }}</span>
                        </div>
                        <div class="extra-row-right">
                            <span class="erl-info">{{ getAmount($trxItem->support->total) }}</span>
                        </div>
                    </div>
                    @endif
                    @endforeach
                    @elseif($trx->isTypeDeposit())
                    <div class="extra-row">
                        <div class="extra-row-left">
                            <span class="deposit-title">{{ translate('Deposit Amount') }}</span>
                        </div>
                        <div class="extra-row-right">
                            <span class="erl-info">{{ getAmount($trx->amount) }}</span>
                        </div>
                    </div>
                    @elseif($trx->isTypeSubscription())
                    <div class="extra-row">
                        <div class="extra-row-left">
                            <span class="subscription-title">{{ translate('Subscription - :plan_name (:plan_interval)', [
                            'plan_name' => $trx->plan->name,
                            'plan_interval' => $trx->plan->getIntervalName(),
                        ]) }}</span>
                        </div>
                        <div class="extra-row-right">
                            <span class="erl-info">{{ getAmount($trx->amount) }}</span>
                        </div>
                    </div>
                    @elseif($trx->isTypeSupportPurchase() || $trx->isTypeSupportExtend())
                    <div class="extra-row">
                        <div class="extra-row-left">
                            <span class="support-title">{{ $trx->support->title }}</span>
                        </div>
                        <div class="extra-row-right">
                            <span class="erl-info">{{ getAmount($trx->amount) }}</span>
                        </div>
                    </div>
                    @endif

                    @if ($summary['gateway'] || $summary['tax'])
                    <div class="summary-section">
                        <div class="summary-row">
                            <div class="summary-label">{{ translate('Ara Toplam') }}</div>
                            <div class="summary-value">{{ getAmount($trx->amount) }}</div>
                        </div>
                        @if ($summary['tax'])
                        <div class="summary-row">
                            <div class="summary-label">{{ translate(':tax_name (:tax_rate%)', [
                                'tax_name' => $summary['tax']['name'],
                                'tax_rate' => $summary['tax']['rate'],
                            ]) }}</div>
                            <div class="summary-value">{{ $summary['tax']['amount'] }}</div>
                        </div>
                        @endif
                        @if ($summary['gateway'])
                        <div class="summary-row">
                            <div class="summary-label">{{ translate(':payment_gateway Fees (:percentage%)', [
                                'payment_gateway' => $summary['gateway']['name'],
                                'percentage' => $summary['gateway']['fees'],
                            ]) }}</div>
                            <div class="summary-value">{{ $summary['gateway']['amount'] }}</div>
                        </div>
                        @endif
                    </div>
                    @endif

                    <div class="total-price-container">
                        <p class="total-price-p">{{ translate('TOPLAM TUTAR') }}</p>
                        <p class="total-price">{{ getAmount($summary['total']) }}</p>
                    </div>

                    <div class="price-note-container">
                        <p class="price-note-summary">{{ translate('Fiyatlara KDV dahildir') }}</p>
                    </div>
                </div>
            </div>

            <div class="secure-payment-box d-none d-xl-flex">
                <div class="secure-payment-icon">
                    <i class="fa-solid fa-lock"></i>
                </div>
                <div class="secure-payment-text">
                    <span class="secure-payment-title">{{ translate('Güvenli Ödeme') }}</span>
                    <p class="secure-payment-desc">
                        {{ translate('Bilgileriniz 256-bit SSL şifreleme ile korunmaktadır') }}
                    </p>
                </div>
            </div>

            <div class="d-none d-xl-block mt-4">
                <button form="checkoutForm" class="continue-btn">{{ translate('Devam Et') }}</button>
            </div>
        </div>
    </div>
</div>
<style>
    /* Sipariş Özeti Bölümü */
    .extra-services {
        display: flex;
        flex-direction: column;
        width: 100%;
        border-radius: 10px;
        overflow: hidden;
        border: 1px solid #f0f0f0;
        margin-bottom: 20px;
        background-color: #fff;
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
    }

    .extra-header {
        background-color: #fff;
        border-bottom: 1px solid #f0f0f0;
    }

    .extra-left {
        width: 50%;
        color: #292828;
    }

    .extra-100 {
        width: 100%;
        text-align: center;
        padding: 18px 20px;
        font-weight: 600;
        color: #292828;
        font-size: 16px;
    }

    .extra-body {
        background-color: #fff;
        border-radius: 0 0 10px 10px;
        padding: 0;
    }

    /* Ürün Satırları */
    .extra-row {
        display: flex;
        align-items: center;
        width: 100%;
        border-bottom: 1px solid #f0f0f0;
        padding: 15px 20px;
    }

    .extra-row:last-child {
        border-bottom: none;
    }

    .extra-row-left {
        width: 70%;
        display: flex;
        align-items: center;
    }

    .extra-row-right {
        width: 30%;
        text-align: right;
    }

    .product-image-small {
        width: 60px;
        height: 60px;
        min-width: 60px;
        display: flex;
        align-items: center;
        justify-content: center;
        overflow: hidden;
        border-radius: 8px;
        margin-right: 15px;
    }

    .product-image-small img {
        width: 100%;
        height: 100%;
        object-fit: cover;
        border-radius: 8px;
    }

    .product-details {
        flex: 1;
    }

    .erl-header {
        font-size: 15px;
        font-weight: 600;
        color: #292828;
        text-align: left;
        margin-bottom: 5px;
        max-width: 300px;
    }

    .product-meta {
        display: flex;
        flex-wrap: wrap;
        gap: 10px;
    }

    .erl-quantity {
        font-size: 13px;
        color: #667093;
        display: inline-block;
        margin-right: 10px;
    }

    .text-muted {
        color: #667093;
    }

    .erl-info {
        font-size: 16px;
        font-weight: 600;
        color: #292828;
    }

    /* Destek Satırı */
    .support-row {
        background-color: #f9f9f9;
        padding: 10px 20px;
    }

    .support-title,
    .deposit-title,
    .subscription-title {
        font-size: 14px;
        font-weight: 500;
        color: #292828;
    }

    /* Özet Bölümü */
    .summary-section {
        padding: 15px 20px;
        border-top: 1px solid #f0f0f0;
        border-bottom: 1px solid #f0f0f0;
    }

    .summary-row {
        display: flex;
        justify-content: space-between;
        margin-bottom: 10px;
    }

    .summary-row:last-child {
        margin-bottom: 0;
    }

    .summary-label {
        font-size: 14px;
        color: #292828;
    }

    .summary-value {
        font-size: 14px;
        font-weight: 600;
        color: #292828;
    }

    /* Toplam Fiyat */
    .total-price-container {
        width: 100%;
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 15px 20px;
        background-color: #fff;
        border-radius: 8px;
        margin-top: 5px;
    }

    .total-price-p {
        font-weight: 600;
        font-size: 16px;
        color: #292828;
        margin-bottom: 0;
    }

    .total-price {
        font-size: 18px;
        font-weight: 700;
        color: #00c753;
        margin-bottom: 0;
    }

    .price-note-container {
        text-align: center;
        padding: 0 20px 15px;
    }

    .price-note-summary {
        font-size: 13px;
        color: #667093;
        margin-bottom: 0;
    }

    /* Güvenli Ödeme Kutusu */
    .secure-payment-box {
        display: flex;
        align-items: center;
        padding: 20px;
        background-color: #fff;
        border-radius: 10px;
        border: 1px solid #f0f0f0;
        margin-bottom: 20px;
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
    }

    .secure-payment-icon {
        width: 50px;
        height: 50px;
        min-width: 50px;
        display: flex;
        align-items: center;
        justify-content: center;
        margin-right: 15px;
    }

    .secure-payment-icon i {
        font-size: 30px;
        color: #00c753;
    }

    .secure-payment-text {
        flex: 1;
    }

    .secure-payment-title {
        font-size: 16px;
        font-weight: 600;
        color: #292828;
        display: block;
        margin-bottom: 5px;
    }

    .secure-payment-desc {
        font-size: 14px;
        color: #667093;
        margin-bottom: 0;
    }

    /* Devam Et Butonu */
    .continue-btn {
        width: 100%;
        background: linear-gradient(45deg, #00c753 0%, #4ddb87 100%);
        display: flex;
        border-radius: 8px;
        padding: 16px 10px;
        color: #fff !important;
        text-decoration: none;
        align-items: center;
        justify-content: center;
        font-weight: 600;
        font-size: 16px;
        transition: all 0.3s ease;
        border: none;
        cursor: pointer;
        box-shadow: 0 4px 10px rgba(0, 199, 83, 0.2);
    }

    .continue-btn:hover {
        transform: translateY(-2px);
        box-shadow: 0 6px 15px rgba(0, 199, 83, 0.3);
    }

    /* Responsive Tasarım */
    @media (max-width: 992px) {
        .order-1 {
            order: 1 !important;
        }

        .order-xl-2 {
            order: 2;
        }
    }

    @media (max-width: 768px) {
        .extra-row-left {
            width: 60%;
        }

        .extra-row-right {
            width: 40%;
        }

        .cart-progress-area {
            display: none !important;
        }
    }

    @media (max-width: 576px) {
        .total-price-p {
            text-align: center;
            width: 100%;
            border-bottom: 1px solid #f0f0f0;
        }

        .extra-row {
            flex-direction: row;
            align-items: flex-start;
        }
 

        .extra-row-left {
            width: 100%;
            margin-bottom: 10px;
        }

        .extra-row-right {
            width: 100%;
            text-align: right;
        }

        .product-meta {
            flex-direction: column;
            gap: 5px;
        }

        .erl-quantity {
            margin-right: 0;
        }

        .total-price-container {
            flex-direction: column;
            align-items: center;
        }

        .total-price {
            margin-top: 5px;
            width: 100%;
            text-align: center
        }
    }

    /* Hero Banner */
    .hero-banner {
        width: 100%;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        padding: 40px 0;
        height: 220px;
        background-color: #fff;
        position: relative;
        margin-bottom: 30px;
    }

    .hero-banner h2 {
        color: #292828;
        font-size: 32px;
        font-weight: 600;
        margin-bottom: 15px;
    }

    .hero-banner p {
        max-width: 600px;
        text-align: center;
        color: #667093;
        font-size: 16px;
        line-height: 1.5;
    }

    /* Cart Progress Area */
    .cart-progress-area {
        width: 100%;
        position: absolute;
        bottom: 0;
        display: flex;
        flex-direction: column;
        align-items: center;
        padding: 15px 0;
        padding-bottom: 0;
        border-bottom: 2px solid #eee;
    }

    .cpa-top {
        width: 100%;
        display: flex;
        padding: 0 20px;
        overflow: hidden;
        max-width: 800px;
        margin: 0 auto;
    }

    .cpa-top div {
        white-space: nowrap;
        display: flex;
        align-items: center;
        justify-content: center;
        font-weight: 500;
        font-size: 15px;
    }

    .cpa-top span {
        margin-left: 5px;
        display: flex;
    }

    .cpa-bottom {
        height: 4px;
        margin-top: 15px;
        top: 3px;
        align-self: flex-start;
        background: linear-gradient(90deg, #00c753 48%, #4ddb87 100%);
        position: relative;
        max-width: 850px;
        width: 100%;
    }

    .cpa-bottom span {
        position: absolute;
        right: 0;
        top: -5px;
        width: 14px;
        height: 14px;
        border-radius: 50%;
        background: linear-gradient(180deg, #00c753 0%, #4ddb87 100%);
    }

    .cpa-bottom.basket {
        width: 100%;
    }

    .extra-50-left {
        width: 50%;
    }

    .no-pass {
        color: #aaaaaa;
    }

    /* Genel Stiller */
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Euclid Circular B', 'Figtree', sans-serif;
    }

    /* Ödeme Yöntemi ve Fatura Adresi Bölümleri */
    .extra-services {
        display: flex;
        flex-direction: column;
        width: 100%;
        border-radius: 10px;
        overflow: hidden;
        border: 1px solid #f0f0f0;
        background-color: #fff;
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
    }

    .extra-header {
        background-color: #fff;
        border-bottom: 1px solid #f0f0f0;
    }

    .extra-left {
        width: 50%;
        color: #292828;
    }

    .extra-100 {
        width: 100%;
        text-align: center;
        padding: 18px 20px;
        font-weight: 600;
        color: #292828;
        font-size: 16px;
    }

    .extra-body {
        background-color: #fff;
        border-radius: 0 0 10px 10px;
        padding: 20px;
    }

    /* Ödeme Yöntemleri Grid */
    .payment-methods-container {
        padding: 10px;
    }

    .payment-methods-grid {
        display: grid;
        grid-template-columns: repeat(auto-fill, minmax(150px, 1fr));
        gap: 15px;
    }

    /* Ödeme Yöntemi Kartları */
    .payment-method-item {
        position: relative;
    }

    .payment-radio {
        position: absolute;
        opacity: 0;
        width: 0;
        height: 0;
    }

    .payment-label {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        padding: 15px;
        border: 1px solid #f0f0f0;
        border-radius: 10px;
        cursor: pointer;
        transition: all 0.3s ease;
        height: 100%;
        min-height: 120px;
    }

    .payment-radio:checked+.payment-label {
        border-color: #00c753;
        box-shadow: 0 0 0 2px rgba(0, 199, 83, 0.2);
        background-color: #f9fff9;
    }

    .payment-img {
        width: 60px;
        height: 40px;
        display: flex;
        align-items: center;
        justify-content: center;
        margin-bottom: 10px;
    }

    .payment-img img {
        max-width: 100%;
        max-height: 100%;
        object-fit: contain;
    }

    .payment-name {
        font-size: 14px;
        font-weight: 500;
        color: #292828;
        text-align: center;
        margin-bottom: 5px;
    }

    .payment-balance {
        font-size: 14px;
        font-weight: 600;
        color: #00c753;
    }

    /* Fatura Adresi Formu */
    .billing-form {
        padding: 10px;
    }

    .form-row {
        display: flex;
        flex-wrap: wrap;
        margin-bottom: 15px;
        gap: 15px;
    }

    .form-group {
        display: flex;
        flex-direction: column;
        gap: 5px;
    }

    .form-group.full {
        width: 100%;
    }

    .form-group.half {
        width: calc(50% - 8px);
    }

    .form-group.third {
        width: calc(33.333% - 10px);
    }

    .form-label {
        font-size: 14px;
        color: #292828;
        font-weight: 500;
    }

    .form-input,
    .form-select {
        height: 42px;
        border: 1px solid #e0e0e0;
        border-radius: 8px;
        padding: 0 15px;
        font-size: 14px;
        color: #292828;
        background-color: #fff;
        transition: all 0.3s ease;
    }

    .form-input:focus,
    .form-select:focus {
        border-color: #00c753;
        outline: none;
        box-shadow: 0 0 0 3px rgba(0, 199, 83, 0.1);
    }

    .form-input:disabled {
        background-color: #f9f9f9;
        color: #667093;
    }

    /* Responsive Tasarım */
    @media (max-width: 992px) {
        .order-2 {
            order: 2 !important;
        }

        .order-xl-1 {
            order: 1;
        }
    }

    @media (max-width: 768px) {
        .payment-methods-grid {
            grid-template-columns: repeat(2, 1fr);
        }

        .form-group.half,
        .form-group.third {
            width: 100%;
        }
    }

    @media (max-width: 576px) {
        .payment-methods-grid {
            grid-template-columns: 1fr;
        }

        .extra-body {
            padding: 15px 10px;
        }

        .form-row {
            flex-direction: column;
            gap: 10px;
            margin-bottom: 10px;
        }
    }
</style>