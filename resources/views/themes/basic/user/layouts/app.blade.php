<!DOCTYPE html>
<html lang="{{ getLocale() }}" dir="{{ getDirection() }}">

<head>
    @push('styles_libs')
    <link rel="stylesheet" href="{{ asset('vendor/libs/simplebar/simplebar.min.css') }}">
    <link rel="stylesheet" href="{{ asset('vendor/libs/simplebar/style.css') }}">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    @endpush
    @section('noindex', true)
    @include('themes.basic.includes.head')
    <style>
        .left-item {
            background-color: transparent;
        }

        .announcement-text span {
            color: #fff;
        }

        .nav-bar-links span, .drop-down-btn span {
            font-family: "Poppins", Helvetica, Arial, sans-serif;
        }
        .footer-subscribe h3{
            color:#fff;
            font-size: 1.75rem;
        }
    
        section.section-gap-75 {
    margin-top: 0px !important;
}
    </style>
</head>

<body class="pt-0">
    @include('themes.basic.components.announcement')
    @include('themes.basic.includes.navbar')
    <section class="section-gap-75" style="">
        <div style="background: url(/placeholder.svg?height=200&width=1200) no-repeat center / cover;">
            <div class="user-banner">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-5 col-xl-5">
                            <div class="user-banner-profile">
                                <div class="user-banner-profile-avatar">
                                    <a href="{{ route('user.purchases.index') }}"><img src="{{ authUser()->getAvatar() }}" alt="{{ authUser()->getName() }}"></a>
                                </div>
                                <div class="user-banner-profile-meta">
                                    <div class="user-banner-profile-name">
                                        <center>
                                            <h3><a href="{{ route('user.purchases.index') }}">{{ translate('Merhaba') }} <b>{{ authUser()->getName() }}</b></a></h3>
                                        </center>
                                        <div class="profile-options">
                                            <div class="po-item">
                                                <i class="fa-regular fa-credit-card" aria-hidden="true"></i>
                                                <p><b>{{ getAmount(authUser()->balance) }}</b></p>
                                                @if (@$settings->deposit->status)
                                                <a href="javascript:void(0);" class="add-balance-btn" data-bs-toggle="modal" data-bs-target="#depositModel">{{ translate('Bakiye Ekle') }}</a>
                                                @endif
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- <div class="col-lg-7 col-xl-7">
                            <ul class="user-banner-data">
                                <li class="star"><i class="material-icons notranslate">star</i>
                                    <h3>0</h3> $purchases->count() 
                                    <p>
                                        {{ translate('Bekleyen Siparişler') }}
                                    </p>
                                </li>
                                <li class="ads"><i class="material-icons notranslate">store</i>
                                    <h3>0</h3>
                                    <p>
                                        {{ translate('Siparişlerim') }}
                                    </p>
                                </li>
                                <li class="star"><i class="material-icons notranslate">star</i>
                                    <h3>0</h3>
                                    <p>
                                        {{ translate('Alan Adlarım') }}
                                    </p>
                                </li>
                                <li class="star"><i class="material-icons notranslate">storage</i>
                                    <h3>0</h3>
                                    <p>
                                        {{ translate('Hosting Paketlerim') }}
                                    </p>
                                </li>
                            </ul>
                        </div> -->
                    </div>
                </div>
            </div>
        </div>

        <div class="customer-panel-container">
            <div class="container">
                <div class="panel-layout">
                    <div class="left-bar">
                        <div class="left-header">
                            <i id="menu-icon" class="fa-solid fa-bars" aria-hidden="true"></i>
                            <p>{{ translate('Menü') }}</p>
                            <i id="toggle-icon" class="fa-solid fa-chevron-down" aria-hidden="true"></i>
                        </div>
                        <div class="mobile-menus" id="mobile-menus">
                            <a href="{{ route('user.purchases.index') }}" class="left-item {{ request()->routeIs('user.purchases.*') ? 'active' : '' }}">
                                <i class="fa-solid fa-house" aria-hidden="true"></i>
                                <span>{{ translate('Başlangıç') }}</span>
                            </a>
                            <a href="{{ route('user.settings.index') }}" class="left-item {{ request()->routeIs('user.settings.*') ? 'active' : '' }}">
                                <i class="fa-solid fa-user-pen" aria-hidden="true"></i>
                                <span>{{ translate('Bilgilerimi Düzenle') }}</span>
                            </a>
                            <a href="{{ route('user.transactions.index') }}" class="left-item {{ request()->routeIs('user.transactions.*') ? 'active' : '' }}">
                                <i class="fa-solid fa-file-invoice" aria-hidden="true"></i>
                                <span>{{ translate('Faturalarım') }}</span>
                            </a>

                            <button class="accordion left-item {{ request()->routeIs('user.refunds.*') ? 'active' : '' }}" type="button">
                                <i class="fa-solid fa-folder-tree" aria-hidden="true"></i>
                                <span>{{ translate('Siparişlerim') }}</span>
                            </button>
                            <div class="panel {{ request()->routeIs('user.refunds.*') ? 'open' : '' }}">
                                <a href="{{ route('user.purchases.index') }}" class="left-item {{ request()->routeIs('user.purchases.index') ? 'active' : '' }}">
                                    <i class="fa-solid fa-check" aria-hidden="true"></i>
                                    <span>{{ translate('Tüm Siparişler') }}</span>
                                </a>
                                <a href="{{ route('user.refunds.index') }}" class="left-item {{ request()->routeIs('user.refunds.index') ? 'active' : '' }}">
                                    <i class="fa-solid fa-rotate-left" aria-hidden="true"></i>
                                    <span>{{ translate('İade Talepleri') }}</span>
                                </a>
                            </div>

                            <button class="accordion left-item {{ request()->routeIs('user.tickets.*') ? 'active' : '' }}" type="button">
                                <i class="fa-solid fa-headset" aria-hidden="true"></i>
                                <span>{{ translate('Destek Sistemi') }}</span>
                            </button>
                            <div class="panel {{ request()->routeIs('user.tickets.*') ? 'open' : '' }}">
                                <a href="{{ route('user.tickets.index') }}" class="left-item {{ request()->routeIs('user.tickets.index') ? 'active' : '' }}">
                                    <i class="fa-solid fa-headset" aria-hidden="true"></i>
                                    <span>{{ translate('Destek Taleplerim') }}</span>
                                </a>
                                <a href="{{ route('user.tickets.create') }}" class="left-item {{ request()->routeIs('user.tickets.create') ? 'active' : '' }}">
                                    <i class="fa-solid fa-headset" aria-hidden="true"></i>
                                    <span>{{ translate('Yeni Destek Talebi') }}</span>
                                </a>
                            </div>

                            <a href="{{ route('user.wallet.index') }}" class="left-item {{ request()->routeIs('user.wallet.*') ? 'active' : '' }}">
                                <i class="fa fa-wallet" aria-hidden="true"></i>
                                <span>{{ translate('Cüzdanım') }}</span>
                            </a>

                            @if (@$settings->kyc->status)
                            <a href="{{ route('user.kyc.index') }}" class="left-item {{ request()->routeIs('user.kyc.*') ? 'active' : '' }}">
                                <i class="fa-solid fa-id-card" aria-hidden="true"></i>
                                <span>{{ translate('KYC Doğrulama') }}</span>
                            </a>
                            @endif

                            <a href="#" class="left-item" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                                <i class="fa-solid fa-sign-out-alt" aria-hidden="true"></i>
                                <span>{{ translate('Çıkış Yap') }}</span>
                            </a>
                            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                @csrf
                            </form>
                        </div>
                    </div>

                    <div class="customer-area">
                        @if (@settings('kyc')->status && @settings('kyc')->required && !authUser()->isKycVerified())
                        <div class="customer-box">
                            <div class="customer-header">
                                <div class="ch-left">
                                    <div class="ch-icon">
                                        <i class="fa-solid fa-exclamation-triangle"></i>
                                    </div>
                                    <p>{{ translate('KYC Doğrulama Gerekli') }}</p>
                                </div>
                            </div>
                            <div class="customer-infos">
                                @if (authUser()->isKycPending())
                                <div class="alert alert-warning p-4">
                                    <h4 class="alert-heading">{{ translate('KYC Verification Pending') }}</h4>
                                    <span>{{ translate('Your KYC verification is currently pending. We are processing your information, and you will be notified once the verification is complete.') }}</span>
                                </div>
                                @else
                                <div class="alert alert-danger p-4">
                                    <h4 class="alert-heading">{{ translate('KYC Verification Required') }}</h4>
                                    <p>
                                        {{ translate('Your KYC verification is required to continue using our platform. Please complete the verification process as soon as possible.') }}
                                    </p>
                                    <a href="{{ route('user.kyc.index') }}"
                                        class="btn btn-danger px-4">{{ translate('Complete KYC') }}<i
                                            class="fa-solid fa-arrow-right ms-2"></i></a>
                                </div>
                                @endif
                            </div>
                        </div>
                        @endif

                        @if (licenseType(2) && @$settings->premium->status && authUser()->isSubscribed())
                        <div class="customer-box">
                            <div class="customer-header">
                                <div class="ch-left">
                                    <div class="ch-icon">
                                        <i class="fa-solid fa-crown"></i>
                                    </div>
                                    <p>{{ translate('Premium Üyelik') }}</p>
                                </div>
                            </div>
                            <div class="customer-infos">
                                @if (authUser()->subscription->isAboutToExpire())
                                <div class="alert alert-warning p-4">
                                    <h4 class="alert-heading">{{ translate('Your subscription is about to expire') }}
                                    </h4>
                                    <span>{{ translate('Your current subscription is nearing its expiration date. To continue enjoying uninterrupted access to premium features, please renew your subscription before it expires.') }}</span>
                                </div>
                                @elseif(authUser()->subscription->isExpired())
                                <div class="alert alert-danger p-4">
                                    <h4 class="alert-heading">{{ translate('Your subscription has been expired') }}
                                    </h4>
                                    <span>{{ translate('Your subscription has expired, and you no longer have access to premium features. Please renew your subscription to regain access to all features.') }}</span>
                                </div>
                                @endif
                            </div>
                        </div>
                        @endif

                        <div class="customer-box">
                            <div class="customer-header">
                                <div class="ch-left">
                                    <div class="ch-icon">
                                        <i class="fa-solid fa-tachometer-alt"></i>
                                    </div>
                                    <p>@yield('title')</p>
                                </div>
                            </div>
                            <div class="customer-infos">
                                @yield('content')
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    @if (@$settings->deposit->status)
    <div class="modal fade" id="depositModel" tabindex="-1" aria-labelledby="depositModelLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content p-4">
                <div class="modal-header border-0 p-0 mb-3">
                    <h1 class="modal-title fs-5" id="depositModelLabel">{{ translate('Deposit') }}</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body p-0">
                    <form action="{{ route('user.wallet.deposit') }}" method="POST">
                        @csrf
                        <div class="mb-4">
                            @include('themes.basic.user.partials.input-price', [
                            'name' => 'amount',
                            'min' => @$settings->deposit->minimum,
                            'max' => @$settings->deposit->maximum,
                            'required' => true,
                            ])
                        </div>
                        <button class="btn btn-primary btn-md w-100">{{ translate('Continue') }}</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    @endif
    <br> <br>
    @include('themes.basic.includes.footer')
    @push('scripts_libs')
    <script src="{{ asset('vendor/libs/simplebar/simplebar.min.js') }}"></script>
    @endpush
    @include('themes.basic.includes.config')
    @include('themes.basic.includes.scripts')

    <script>
        document.addEventListener("DOMContentLoaded", function() {
            var toggleIcon = document.getElementById("toggle-icon");
            var menuIcon = document.getElementById("menu-icon");
            var mobileMenus = document.getElementById("mobile-menus");
            var isOpen = false;

            toggleIcon.addEventListener("click", function() {
                isOpen = !isOpen;

                // Menüyü aç/kapat
                if (isOpen) {
                    mobileMenus.classList.add("open");
                    toggleIcon.classList.remove("fa-chevron-down");
                    toggleIcon.classList.add("fa-chevron-up");
                } else {
                    mobileMenus.classList.remove("open");
                    toggleIcon.classList.remove("fa-chevron-up");
                    toggleIcon.classList.add("fa-chevron-down");
                }
            });

            // Accordion menü işlevselliği
            var acc = document.getElementsByClassName("accordion");
            for (var i = 0; i < acc.length; i++) {
                acc[i].addEventListener("click", function() {
                    this.classList.toggle("active");
                    var panel = this.nextElementSibling;
                    if (panel.style.maxHeight) {
                        panel.style.maxHeight = null;
                    } else {
                        panel.style.maxHeight = panel.scrollHeight + "px";
                    }
                });
            }

            // Aktif menü panellerini aç
            var activePanels = document.querySelectorAll('.panel.open');
            activePanels.forEach(function(panel) {
                panel.style.maxHeight = panel.scrollHeight + "px";
            });
        });
    </script>

</body>

</html>