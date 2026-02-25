<div class="item {{ $item_classes ?? '' }}">
    <div class="item-header">
        @if ($item->isPreviewFileTypeImage())
            <a href="{{ $item->getLink() }}" class="item-img">
                <img src="{{ $item->getPreviewImageLink() }}" alt="{{ $item->name }}" />
            </a>
        @elseif($item->isPreviewFileTypeVideo())
            <a href="{{ $item->getLink() }}" class="opacity-100">
                <div class="item-video">
                    <video class="plyr" poster="{{ $item->getPreviewImageLink() }}" muted>
                        <source src="{{ $item->getPreviewLink() }}">
                    </video>
                    <div class="item-video-actions d-flex align-items-center justify-content-between gap-1">
                        <div class="item-video-volume item-video-action">
                            <i class="fa-solid fa-volume-high" class="unmuted"></i>
                            <i class="fa-solid fa-volume-xmark" class="muted"></i>
                        </div>
                        <div class="d-flex align-items-center gap-1">
                            <div class="item-video-full item-video-action">
                                <i class="fa fa-expand"></i>
                            </div>
                        </div>
                    </div>
                    <div class="item-video-progress">
                        <span></span>
                    </div>
                </div>
            </a>
        @elseif($item->isPreviewFileTypeAudio())
            <div class="item-audio">
                <a href="{{ $item->getLink() }}" class="item-audio-link opacity-100"></a>
                <div class="item-audio-wave">
                    <div class="item-audio-actions">
                        <button class="play-button btn btn-primary btn-sm px-2">
                            <div class="play-button-icon">
                                <i class="fas fa-play"></i>
                            </div>
                        </button>
                        <button class="pause-button btn btn-primary btn-sm px-2 d-none">
                            <div class="play-button-icon">
                                <i class="fas fa-pause"></i>
                            </div>
                        </button>
                    </div>
                    <div class="waveform" data-url="{{ $item->getPreviewLink() }}" data-waveheight="50"></div>
                    <div class="total-duration">00:00</div>
                </div>
            </div>
        @endif
        @if ($item->isOnDiscount())
            <div class="item-badge item-badge-sale">
                <i class="fa-solid fa-tag me-1"></i>
                {{ translate('İndirimde') }}
            </div>
        @endif
    </div>
    <div class="item-content">
        <h6 class="item-title">
            <a href="{{ $item->getLink() }}">{{ $item->name }}</a>
        </h6>
        <div class="item-info d-flex justify-content-between align-items-center gap-3">
                <div>
                    <div class="item-price {{ !$item->hasSales() ? 'mb-0' : '' }}">
                        @if ($item->isOnDiscount())
                            <span class="item-price-through">
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
                    </div>
                    @if (@$settings->item->item_total_sales && $item->hasSales())
                        <div class="item-sales">
                            <i class="fa fa-cart-shopping me-1"></i>
                            {{ translate($item->total_sales > 1 ? ':count Sales' : ':count Sale', ['count' => numberFormat($item->total_sales)]) }}
                        </div>
                    @endif
                </div>
        <div class="item-meta">
            <div class="easy-setup">
                    <span class="package-item-desc"><i class="fa-solid fa-code"></i> Kolay Kurulum</span>
                </div>
            <div class="responsive">
                    <span class="package-item-desc"><i class="fa-solid fa-mobile-screen-button"></i> Mobil Uyumlu</span>
                </div>
        </div>
            <div class="row row-cols-auto g-2">
                
                    <div class="col">
                        @if ($item->isPurchaseMethodInternal())
                            <form data-action="{{ route('cart.add-item') }}" class="add-to-cart-form" method="POST">
                                <input type="hidden" name="item_id" value="{{ $item->id }}">
                                <input type="hidden" name="license_type" value="1">
                                @if (@$settings->item->support_status && defaultSupportPeriod() && $item->isSupported())
                                    <input type="hidden" name="support" value="{{ defaultSupportPeriod()->id }}">
                                @endif
                                <button class="btn btn-outline-primary btn-md btn-padding">
                                    <i class="fa-solid fa-shopping-cart"></i> Sepete Ekle
                                </button>
                            </form>
                        @else
                            <a href="{{ $item->purchase_url }}" target="_blank"
                                class="btn btn-outline-primary btn-md btn-padding">
                                <i class="fa-solid fa-shopping-cart"></i> Sepete Ekle
                            </a>
                        @endif
                    </div>
                <div class="col">
                    <a href="{{ $item->getLink() }}" class="btn btn-outline-secondary btn-md btn-padding">
                        <i class="far fa-eye"></i> Detaylar
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
