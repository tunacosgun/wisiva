@extends('themes.basic.layouts.single')
@section('noindex', true)
@section('header_title', translate('Your Cart'))
@section('title', translate('Your Cart'))
@section('body_bg', 'bg-white')
@section('breadcrumbs', Breadcrumbs::render('cart'))
@section('container', 'container-custom')
@if ($cartItems->count() > 0)
@section('header_v3', true)
@endif
@section('content')
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

<section id="cart-section">
    <div class="container">
        @if ($cartItems->count() > 0)
        <div class="cart-top">
            <div class="extra-services">
                <table class="cart-table">
                    <thead class="extra-header">
                        <tr>
                            <th class="extra-left">{{ translate('Ürün / Hizmet') }}</th>
                            <th class="extra-left">{{ translate('Birim Fiyat') }}</th>
                            <th class="extra-left">{{ translate('İşlemler') }}</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($cartItems as $cartItem)
                        @php
                        $item = $cartItem->item;
                        // KDV dahil fiyat hesaplama
                        $itemPrice = $cartItem->isLicenseTypeRegular() ?
                        ($item->isOnDiscount() ? $item->price->regular : $item->getRegularPrice()) :
                        ($item->isOnDiscount() && $item->isExtendedOnDiscount() ? $item->price->extended : $item->getExtendedPrice());
                        @endphp
                        <tr class="cart-item-row">
                            <td class="urund">
                                <a href="{{ $item->getLink() }}" class="product-image">
                                    <img src="{{ $item->getThumbnailLink() }}" alt="{{ $item->name }}">
                                </a>
                                <div class="urunds">
                                    <p class="erl-header text-truncate">{{ $item->name }}</p>
                                    <span class="erl-content">
                                        <div class="product-options">
                                            <div class="option-group">
                                                <label>{{ translate('Quantity') }}:</label>
                                                <div class="option-input-wrapper">
                                                    <input type="number" name="quantity" min="1" max="50"
                                                        class="form-control quantity-input" value="{{ $cartItem->quantity }}"
                                                        form="update-form-{{ $cartItem->id }}"
                                                        data-original-value="{{ $cartItem->quantity }}"
                                                        data-item-id="{{ $cartItem->id }}">
                                                </div>
                                            </div>

                                            @if (@$settings->item->support_status && $item->isSupported())
                                            <div class="option-group">
                                                <label>{{ translate('Support') }}:</label>
                                                <div class="option-input-wrapper">
                                                    <select name="support" class="form-select support-select"
                                                        form="update-form-{{ $cartItem->id }}"
                                                        data-original-value="{{ $cartItem->support_period_id }}"
                                                        data-item-id="{{ $cartItem->id }}">
                                                        @foreach (supportPeriods() as $supportPeriod)
                                                        <option value="{{ $supportPeriod->id }}"
                                                            @selected($supportPeriod->id == $cartItem->support_period_id)>
                                                            {{ $supportPeriod->name }}
                                                        </option>
                                                        @endforeach
                                                    </select>
                                                </div>
                                            </div>
                                            @endif

                                            <div class="option-group">
                                                <button class="update-btn" form="update-form-{{ $cartItem->id }}" id="update-btn-{{ $cartItem->id }}" style="display: none;">
                                                    {{ translate('Update') }}
                                                </button>
                                            </div>
                                        </div>
                                    </span>
                                </div>
                            </td>
                            <td class="price-cell">
                                <div class="price-wrapper">
                                    @if ($cartItem->isLicenseTypeRegular())
                                    @if ($item->isOnDiscount())
                                    <span class="old-price">
                                        {{ getAmount($item->getRegularPrice(), 0, '.', '') }}
                                    </span>
                                    <span class="item-price-amount">
                                        {{ getAmount($item->price->regular, 0, '.', '') }}
                                    </span>
                                    @else
                                    <span class="item-price-amount">
                                        {{ getAmount($item->getRegularPrice(), 0, '.', '') }}
                                    </span>
                                    @endif
                                    @else
                                    @if ($item->isOnDiscount() && $item->isExtendedOnDiscount())
                                    <span class="old-price">
                                        {{ getAmount($item->getExtendedPrice(), 0, '.', '') }}
                                    </span>
                                    <span class="item-price-amount">
                                        {{ getAmount($item->price->extended, 0, '.', '') }}
                                    </span>
                                    @else
                                    <span class="item-price-amount">
                                        {{ getAmount($item->getExtendedPrice(), 0, '.', '') }}
                                    </span>
                                    @endif
                                    @endif
                                    <p class="price-note">{{ translate('KDV Dahil') }}</p>
                                </div>
                            </td>
                            <td class="td-btn">
                                <form action="{{ route('cart.update-item', $cartItem->id) }}" method="POST" id="update-form-{{ $cartItem->id }}">
                                    @csrf
                                    <input type="hidden" name="license_type" value="{{ $cartItem->license_type }}">
                                </form>
                                <form action="{{ route('cart.remove-item', $cartItem->id) }}" method="POST">
                                    @csrf
                                    <button type="submit" class="cart-btn delete-cart action-confirm">
                                        <i class="fa-solid fa-trash" aria-hidden="true"></i>
                                    </button>
                                </form>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>

            <div class="cart-actions">
                <a href="{{ route('home') }}" class="browse-btn">
                    <i class="fa fa-arrow-left fa-rtl d-none d-lg-inline me-2"></i>
                    <span>{{ translate('Continue browsing') }}</span>
                </a>

                <form action="{{ route('cart.empty') }}" method="POST">
                    @csrf
                    <button class="empty-cart-btn action-confirm">
                        <i class="fa-regular fa-trash-can me-2"></i>
                        <span>{{ translate('Empty Cart') }}</span>
                    </button>
                </form>
            </div>
        </div>

        <div class="cart-bottom">
            <div class="cb-right">
                <div id="3adimgizle">
                    <div class="extra-services">
                        <div class="extra-header">
                            <div class="extra-left extra-100">{{ translate('Sipariş Özeti') }}</div>
                        </div>
                        <div class="extra-body">
                            @foreach ($cartItems as $cartItem)
                            @php
                            $item = $cartItem->item;
                            $itemPrice = $cartItem->isLicenseTypeRegular() ?
                            ($item->isOnDiscount() ? $item->price->regular : $item->getRegularPrice()) :
                            ($item->isOnDiscount() && $item->isExtendedOnDiscount() ? $item->price->extended : $item->getExtendedPrice());
                            @endphp
                            <div class="extra-row">
                                <div class="extra-row-left">
                                    <span class="erl-header text-truncate">{{ $item->name }}</span>
                                    <span class="erl-quantity">{{ translate('Quantity') }}: {{ $cartItem->quantity }}</span>
                                    @if (@$settings->item->support_status && $item->isSupported() && $cartItem->support_period_id)
                                    @php
                                    $supportPeriod = collect(supportPeriods())->firstWhere('id', $cartItem->support_period_id);
                                    @endphp
                                    <span class="erl-support">{{ translate('Support') }}: {{ $supportPeriod ? $supportPeriod->name : '' }}</span>
                                    @endif
                                </div>
                                <div class="extra-row-right">
                                    <span class="erl-info">{{ getAmount($itemPrice * $cartItem->quantity, 0, '.', '') }}</span>
                                </div>
                            </div>
                            @endforeach

                            <div class="total-price-container">
                                <p class="total-price-p">{{ translate('TOPLAM TUTAR') }}</p>
                                <p id="total-price" class="total-price">{{ getAmount($cartTotal, 2) }}</p>
                            </div>

                            <div class="price-note-container">
                                <p class="price-note-summary">{{ translate('Fiyatlara KDV dahildir') }}</p>
                            </div>
                        </div>
                    </div>

                    <form action="{{ route('cart.checkout') }}" method="POST">
                        @csrf
                        <button type="submit" class="continue-btn">{{ translate('Ödemeye Geç') }}</button>
                    </form>

                    <div class="secure-payment">
                        <i class="fa-solid fa-lock"></i>
                        <span>{{ translate('Güvenli Ödeme') }}</span>
                    </div>
                </div>
            </div>
        </div>
        @else
        <div class="empty-cart-container">
            <div class="empty-cart-content">
                <div class="empty-cart-icon">
                    <svg xmlns="http://www.w3.org/2000/svg" data-name="Layer 1" width="150px" height="150px"
                        viewBox="0 0 896 747.97143" xmlns:xlink="http://www.w3.org/1999/xlink">
                        <path
                            d="M193.634,788.75225c12.42842,23.049,38.806,32.9435,38.806,32.9435s6.22712-27.47543-6.2013-50.52448-38.806-32.9435-38.806-32.9435S181.20559,765.7032,193.634,788.75225Z"
                            transform="translate(-152 -76.01429)" fill="#2f2e41" />
                        <path
                            d="M202.17653,781.16927c22.43841,13.49969,31.08016,40.3138,31.08016,40.3138s-27.73812,4.92679-50.17653-8.57291S152,772.59636,152,772.59636,179.73811,767.66958,202.17653,781.16927Z"
                            transform="translate(-152 -76.01429)" fill="#00c753" />
                        <!-- SVG içeriği devam ediyor... -->
                    </svg>
                </div>
                <h4 class="empty-cart-title">{{ translate('Your Cart is Empty') }}</h4>
                <p class="empty-cart-text">
                    {{ translate('Your cart is currently empty. Start adding items to make your shopping experience complete!') }}
                </p>
                <div class="empty-cart-action">
                    @include('themes.basic.partials.browse-items-button')
                </div>
            </div>
        </div>
        @endif
    </div>
</section>

<style>
    /* Genel Stiller */
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Euclid Circular B', 'Figtree', sans-serif;
    }

    a {
        text-decoration: none;
        color: #00c753;
    }

    a:hover {
        color: #00a646;
    }

    .text-truncate {
        white-space: nowrap;
        overflow: hidden;
        text-overflow: ellipsis;
        max-width: 100%;
        display: inline-block;
    }

    /* Banner Stili */
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

    /* İlerleme Çubuğu */
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
        top:3px;
        align-self: flex-start;
        background: linear-gradient(90deg, #00c753 48%, #4ddb87 100%);
        position: relative;
        max-width: 800px;
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
        width: 35%;
    }

    .extra-50-left {
        width: 50%;
    }

    .no-pass {
        color: #aaaaaa;
    }

    /* Sepet Bölümü */
    #cart-section {
        display: flex;
        justify-content: center;
        padding: 40px 0;
        background-color: #fff;
    }

    #cart-section .container {
        display: flex;
        flex-wrap: wrap;
        gap: 30px;
    }

    /* Sepet Üst Kısmı */
    .cart-top {
        flex: 1;
        min-width: 65%;
        background-color: #fff;
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
        border-radius: 10px;
        display: flex;
        flex-direction: column;
        gap: 20px;
    }

    /* Sepet Tablosu */
    .extra-services {
        display: flex;
        flex-direction: column;
        width: 100%;
        border-radius: 10px;
        overflow: hidden;
        border: 1px solid #f0f0f0;
    }

    .cart-table {
        width: 100%;
        border-collapse: collapse;
    }

    .extra-header {
        background-color: #fff;
        border-bottom: 1px solid #f0f0f0;
    }

    .extra-header th {
        text-align: center;
        padding: 18px 20px;
        font-weight: 600;
        color: #292828;
        font-size: 14px;
    }

    .extra-body {
        background-color: #fff;
        border-radius: 0 0 10px 10px;
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

    /* Tablo Satırları */
    .cart-table tr {
        border-bottom: 1px solid #f0f0f0;
    }

    .cart-table tr:last-child {
        border-bottom: none;
    }

    .cart-item-row {
        display: table-row;
    }

    .extra-row {
        display: flex;
        align-items: center;
        width: 100%;
        border-bottom: 1px solid #f0f0f0;
        padding: 15px 0;
    }

    .extra-row:last-child {
        border-bottom: none;
    }

    .extra-row-left {
        width: 70%;
        padding: 0 20px;
        display: flex;
        flex-direction: column;
    }

    .extra-row-right {
        width: 30%;
        padding: 0 20px;
        text-align: right;
    }

    .erl-header {
        font-size: 16px;
        font-weight: 600;
        color: #292828;
        text-align: left;
        margin-bottom: 5px;
        max-width: 300px;
    }

    .erl-quantity,
    .erl-support {
        font-size: 14px;
        color: #667093;
        display: block;
        margin-top: 5px;
    }

    .erl-content {
        font-size: 14px;
        font-weight: 400;
        line-height: 1.5;
        display: flex;
        text-align: start;
    }

    .erl-info {
        font-size: 16px;
        font-weight: 600;
        color: #292828;
    }

    /* Ürün Görseli ve Bilgileri */
    .urund {
        display: flex;
        align-items: center;
        padding: 20px;
    }

    .product-image {
        min-width: 100px;
        width: 100px;
        height: 100px;
        display: flex;
        align-items: center;
        justify-content: center;
        overflow: hidden;
        border-radius: 8px;
    }

    .product-image img {
        width: 100%;
        height: 100%;
        object-fit: cover;
        border-radius: 8px;
    }

    .urunds {
        margin-left: 20px;
        flex: 1;
        max-width: calc(100% - 120px);
    }

    /* Ürün Seçenekleri */
    .product-options {
        display: flex;
        flex-wrap: wrap;
        gap: 15px;
    }

    .option-group {
        display: flex;
        flex-direction: column;
        gap: 5px;
    }

    .option-group label {
        font-size: 14px;
        color: #667093;
    }

    .option-input-wrapper {
        display: flex;
        align-items: center;
    }

    /* Miktar ve Destek Seçimi */
    .quantity-input,
    .support-select {
        height: 36px;
        border: 1px solid #ddd;
        border-radius: 5px;
        font-size: 14px;
        padding: 0 10px;
    }

    .quantity-input {
        width: 60px;
        text-align: center;
    }

    .support-select {
        /* width: 140px; */
        background-color: #fff;
    }

    /* Fiyat Bilgileri */
    .price-cell {
        text-align: center;
        padding: 20px;
        vertical-align: middle;
    }

    .price-wrapper {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        padding-top: 10px;
    }

    .old-price {
        text-decoration: line-through;
        font-size: 14px;
        font-weight: 500;
        color: #667093;
        margin-bottom: 5px;
    }

    .item-price-amount {
        font-size: 18px;
        font-weight: 600;
        color: #00c753;
    }

    .price-note {
        font-size: 12px;
        color: #667093;
        margin-top: 3px;
        margin-bottom: 3px;
        text-align: center;
    }

    /* İşlem Butonları */
    .td-btn {
        padding: 20px;
        text-align: center;
        vertical-align: middle;
    }

    .cart-btn {
        border: none;
        outline: none;
        width: 40px;
        height: 40px;
        border-radius: 50%;
        display: flex;
        align-items: center;
        justify-content: center;
        cursor: pointer;
        transition: all 0.3s ease;
        background-color: #00c753;
        color: white;
        font-size: 16px;
        box-shadow: 0 2px 5px rgba(0, 199, 83, 0.3);
    }

    .delete-cart:hover {
        background-color: #00a646;
        transform: translateY(-2px);
    }

    /* Güncelleme Butonu */
    .update-btn {
        background-color: #00c753;
        border: none;
        color: white;
        font-weight: 500;
        cursor: pointer;
        font-size: 14px;
        padding: 8px 15px;
        border-radius: 5px;
        transition: all 0.3s ease;
        box-shadow: 0 2px 5px rgba(0, 199, 83, 0.2);
    }

    .update-btn:hover {
        background-color: #00a646;
        transform: translateY(-2px);
    }

    /* Sepet İşlemleri */
    .cart-actions {
        display: flex;
        justify-content: space-between;
        margin: 20px;
    }

    .browse-btn,
    .empty-cart-btn {
        padding: 12px 20px;
        border-radius: 8px;
        font-weight: 500;
        font-size: 14px;
        transition: all 0.3s ease;
        display: flex;
        align-items: center;
        justify-content: center;
        cursor: pointer;
    }

    .browse-btn {
        background-color: #f0f0f0;
        color: #292828;
        border: none;
    }

    .browse-btn:hover {
        background-color: #e6e6e6;
        color: #292828;
    }

    .empty-cart-btn {
        background-color: #fff;
        color: #00c753;
        border: 1px solid #00c753;
    }

    .empty-cart-btn:hover {
        background-color: #f0fff7;
    }

    /* Sepet Alt Kısmı */
    .cart-bottom {
        flex: 1;
        min-width: 30%;
        max-width: 350px;
    }

    .cb-right {
        width: 100%;
        background-color: #fff;
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
        border-radius: 10px;
        position: sticky;
        top: 20px;
    }

    /* Toplam Fiyat */
    .total-price-container {
        width: 100%;
        display: flex;
        padding: 15px 20px;
        background-color: #fff;
        border-radius: 8px;
        margin-top: 15px;
    }

    .total-price-p {
        font-weight: 600;
        font-size: 16px;
        text-align: center;
        color: #292828;
        margin-bottom: 0;
    }

    .total-price {
        display: flex;
        justify-content: flex-end;
        font-size: 18px;
        font-weight: 700;
        color: #00c753;
        flex: 1;
        text-align: right;
    }

    .price-note-container {
        text-align: center;
        margin-top: 10px;
    }

    .price-note-summary {
        font-size: 13px;
        color: #667093;
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
        margin: 20px;
        box-shadow: 0 4px 10px rgba(0, 199, 83, 0.2);
        max-width: calc(100% - 40px);
    }

    .continue-btn:hover {
        transform: translateY(-2px);
        box-shadow: 0 6px 15px rgba(0, 199, 83, 0.3);
    }

    /* Güvenli Ödeme */
    .secure-payment {
        display: inline-flex;
        width: 100%;
        align-items: center;
        justify-content: center;
        margin-bottom: 10px;
        color: #667093;
        font-size: 14px;
    }

    .secure-payment i {
        margin-right: 8px;
        color: #00c753;
    }

    /* Boş Sepet */
    .empty-cart-container {
        width: 100%;
        padding: 50px 20px;
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
    }

    .empty-cart-content {
        display: flex;
        flex-direction: column;
        align-items: center;
        text-align: center;
    }

    .empty-cart-icon {
        margin-bottom: 20px;
    }

    .empty-cart-title {
        font-size: 24px;
        font-weight: 600;
        color: #292828;
        margin-bottom: 15px;
    }

    .empty-cart-text {
        font-size: 16px;
        color: #667093;
        max-width: 500px;
        margin-bottom: 25px;
        line-height: 1.5;
    }

    .empty-cart-action {
        margin-top: 10px;
    }

    /* Responsive Tasarım */
    @media (max-width: 992px) {
        #cart-section .container {
            flex-direction: column;
        }

        .cart-bottom {
            max-width: 100%;
        }
    }

    @media (max-width: 768px) {
        .hero-banner {
            height: 180px;
            padding: 30px 0;
        }

        .hero-banner h2 {
            font-size: 28px;
        }

        .hero-banner p {
            font-size: 14px;
        }

        .cart-progress-area {
            display: none;
        }

        .cart-actions {
            flex-direction: column;
            gap: 15px;
        }

        .browse-btn,
        .empty-cart-btn {
            width: 100%;
        }

        .erl-header {
            max-width: 200px;
        }

        .product-options {
            flex-direction: column;
        }
    }

    @media (max-width: 576px) {

        /* Mobil görünüm için tablo yapısını değiştir */
        .cart-table,
        .cart-table tbody {
            display: block;
            width: 100%;
        }

        /* Tablo satırlarını flex yapısına dönüştür */
        .cart-item-row {
            display: flex;
            flex-direction: column;
            width: 100%;
            position: relative;
            border-bottom: 1px solid #f0f0f0;
            padding: 15px 0;
        }

        .cart-table td {
            /* display: flex; */
            gap: 10px;
            flex-direction: row;
            text-align: left;
            width: 100%;
            padding: 10px 15px;
            border: none;
        }

        .urund {
            flex-direction: column;
            align-items: flex-start;
            padding: 15px;
        }

        .product-image {
            margin: 0 auto 15px;
        }

        .urunds {
            margin-left: 0;
            width: 100%;
            max-width: 100%;
        }

        .price-cell {
            padding: 10px 15px;
            text-align: left;
        }

        .price-wrapper {
            align-items: flex-start;
            text-align: center;
            justify-content: center;
            align-items: center;
            border-top: 1px solid #f3f3f3;
        }

        .td-btn {
            position: absolute;
            top: 15px;
            right: 15px;
            padding: 0;
            width: auto;
        }

        .option-input-wrapper {
            flex-wrap: wrap;
        }

        .extra-row {
            flex-direction: row;
            align-items: flex-start;
        }

        .extra-row-left,
        .extra-row-right {
            width: 100%;
            padding: 10px 20px;
        }

        .extra-row-right {
            text-align: left;
        }

        .total-price-container {
            flex-direction: column;
            gap: 10px;
        }

        .total-price {
            justify-content: center;
            margin-bottom: 0;
            border-top: 1px solid #f0f0f0;
        }

        /* Mobilde ürün bilgilerini daha düzenli göster */
        .product-options {
            display: flex;
            flex-direction: row;
            flex-wrap: wrap;
            gap: 10px;
        }

        .option-group {
            margin-right: 10px;
        }

        /* Mobilde başlıkları gizle */
        .extra-header {
            display: none;
        }
    }
</style>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        // Miktar ve destek seçeneklerindeki değişiklikleri dinle
        const quantityInputs = document.querySelectorAll('.quantity-input');
        const supportSelects = document.querySelectorAll('.support-select');

        // Miktar değişikliklerini dinle
        quantityInputs.forEach(input => {
            input.addEventListener('input', function() {
                const itemId = this.getAttribute('data-item-id');
                const originalValue = this.getAttribute('data-original-value');
                const updateBtn = document.getElementById('update-btn-' + itemId);

                // Değer değiştiyse güncelle butonunu göster
                if (this.value !== originalValue) {
                    updateBtn.style.display = 'block';
                } else {
                    // Destek seçeneği de değişmediyse butonu gizle
                    const supportSelect = document.querySelector('.support-select[data-item-id="' + itemId + '"]');
                    if (!supportSelect || supportSelect.value === supportSelect.getAttribute('data-original-value')) {
                        updateBtn.style.display = 'none';
                    }
                }
            });
        });

        // Destek seçenekleri değişikliklerini dinle
        supportSelects.forEach(select => {
            select.addEventListener('change', function() {
                const itemId = this.getAttribute('data-item-id');
                const originalValue = this.getAttribute('data-original-value');
                const updateBtn = document.getElementById('update-btn-' + itemId);

                // Değer değiştiyse güncelle butonunu göster
                if (this.value !== originalValue) {
                    updateBtn.style.display = 'block';
                } else {
                    // Miktar da değişmediyse butonu gizle
                    const quantityInput = document.querySelector('.quantity-input[data-item-id="' + itemId + '"]');
                    if (quantityInput.value === quantityInput.getAttribute('data-original-value')) {
                        updateBtn.style.display = 'none';
                    }
                }
            });
        });
    });
</script>
@endsection