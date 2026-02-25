@extends('admin.layouts.form')
@section('section', translate('Sections'))
@section('title', translate('Edit Home Section'))
@section('back', route('admin.sections.home-sections.index'))
@section('container', 'container-max-lg')
@section('content')
    <form id="wisiva-submited-form" action="{{ route('admin.sections.home-sections.update', $homeSection->id) }}"
        method="POST">
        @csrf
        <div class="card p-2 pb-3">
           
            <div class="card-body">
                <div class="mb-3 col-lg-4">
                    <label class="form-label">{{ translate('Status') }}</label>
                    <input type="checkbox" name="status" data-toggle="toggle" data-height="40" @checked($homeSection->isActive())>
                </div>
                <div class="row g-3 row-cols-1">
                    <div class="col">
                        <label class="form-label">{{ translate('Name') }}</label>
                        <input type="text" name="name" class="form-control form-control-lg"
                            value="{{ $homeSection->name }}" />
                    </div>
                    <div class="col">
                        <label class="form-label">{{ translate('Description') }}</label>
                        <textarea name="description" class="form-control" rows="7">{{ $homeSection->description }}</textarea>
                    </div>
                    @if ($homeSection->alias == "premium_items")
                        <div class="col border p-4">
                            <label class="form-label">{{ translate('Items') }}</label>
                            <div id="dynamic-items-container">
                                @foreach ($homeSection->json as $index => $item)
                                    <div class="dynamic-item mb-3">
                                        <div class="row g-2">
                                            <div class="col">
                                                <div class="input-group">
                                                    <input type="text" class="form-control item-icon" placeholder="{{ translate('Icon') }}" value="{{ $item['icon'] ?? '' }}">
                                                    <button type="button" class="btn btn-outline-secondary icon-picker-btn">
                                                        <i class="fa-solid fa-icons"></i>
                                                    </button>
                                                </div>
                                            </div>
                                            <div class="col">
                                                <input type="text" class="form-control item-title" placeholder="{{ translate('Title') }}" value="{{ $item['title'] ?? '' }}">
                                            </div>
                                            <div class="col">
                                                <input type="text" class="form-control item-description" placeholder="{{ translate('Description') }}" value="{{ $item['description'] ?? '' }}">
                                            </div>
                                            <div class="col-auto">
                                                <button type="button" class="btn btn-danger remove-item">{{ translate('Remove') }}</button>
                                            </div>
                                        </div>
                                    </div>
                                @endforeach
                            </div>
                            <button type="button" id="add-item" class="btn btn-primary mt-3">{{ translate('Add Item') }}</button>
                            <input type="hidden" name="json" id="json-data"> <!-- Hidden input for JSON data -->
                        </div>
                    @endif
                    @if ($homeSection->items_number)
                        <div class="col">
                            <label class="form-label">{{ translate('Items Number') }}</label>
                            <input type="number" name="items_number" class="form-control form-control-lg" min="1"
                                max="100" value="{{ $homeSection->items_number }}" required>
                            <div class="form-text">{{ translate('Between 1 to 100 maximum') }}</div>
                        </div>
                    @endif
                    @if ($homeSection->cache_expiry_time)
                        <div class="col">
                            <label class="form-label">{{ translate('Cache Expiry time') }}</label>
                            <div class="input-group">
                                <input type="number" class="form-control" name="cache_expiry_time" min="1"
                                    max="525600" value="{{ $homeSection->cache_expiry_time }}" required>
                                <span class="input-group-text">
                                    <i class="fa-regular fa-clock me-2"></i>{{ translate('Minutes') }}</span>
                            </div>
                            <div class="form-text">{{ translate('From 1 to 525600 minutes') }}</div>
                            <div class="alert alert-warning mb-0 mt-3">
                                <i class="fa-regular fa-circle-question me-1"></i>
                                <span>
                                    {{ translate('You must clear the cache every time you changed the "Items Number" or "Cache Expiry time"') }}
                                </span>
                            </div>
                        </div>
                    @endif
                  
                </div>
            </div>
        </div>
    </form>

    <!-- FontAwesome Icon Picker Modal -->
    <div class="modal fade" id="iconPickerModal" tabindex="-1" aria-labelledby="iconPickerModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-scrollable">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="iconPickerModalLabel">{{ translate('Select FontAwesome Icon') }}</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">
                        <input type="text" id="iconSearch" class="form-control" placeholder="{{ translate('Search icons...') }}">
                    </div>
                    <div class="row g-3" id="iconsContainer">
                        <!-- Icons will be loaded here via JavaScript -->
                        <div class="text-center py-4">
                            <div class="spinner-border" role="status">
                                <span class="visually-hidden">{{ translate('Loading...') }}</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function () {
            const container = document.getElementById('dynamic-items-container');
            const addItemButton = document.getElementById('add-item');
            const jsonDataInput = document.getElementById('json-data');
            const form = document.getElementById('wisiva-submited-form');
            const iconPickerModal = new bootstrap.Modal(document.getElementById('iconPickerModal'));
            const iconsContainer = document.getElementById('iconsContainer');
            const iconSearch = document.getElementById('iconSearch');
            let currentIconInput = null;

            // FontAwesome icon categories and icons
const fontAwesomeIcons = {
    'Solid': [
        'fa-solid fa-house', 'fa-solid fa-user', 'fa-solid fa-envelope', 'fa-solid fa-phone',
        'fa-solid fa-lock', 'fa-solid fa-key', 'fa-solid fa-gear', 'fa-solid fa-cog',
        'fa-solid fa-wrench', 'fa-solid fa-trash', 'fa-solid fa-edit', 'fa-solid fa-pen',
        'fa-solid fa-plus', 'fa-solid fa-minus', 'fa-solid fa-check', 'fa-solid fa-times',
        'fa-solid fa-search', 'fa-solid fa-download', 'fa-solid fa-upload', 'fa-solid fa-share',
        'fa-solid fa-heart', 'fa-solid fa-star', 'fa-solid fa-bookmark', 'fa-solid fa-flag',
        'fa-solid fa-bell', 'fa-solid fa-calendar', 'fa-solid fa-clock', 'fa-solid fa-map',
        'fa-solid fa-location-dot', 'fa-solid fa-camera', 'fa-solid fa-video', 'fa-solid fa-image',
        'fa-solid fa-file', 'fa-solid fa-folder', 'fa-solid fa-link', 'fa-solid fa-paperclip',
        'fa-solid fa-cart-shopping', 'fa-solid fa-money-bill', 'fa-solid fa-credit-card', 'fa-solid fa-tag',
        'fa-solid fa-arrow-left', 'fa-solid fa-arrow-right', 'fa-solid fa-arrow-up', 'fa-solid fa-arrow-down',
        'fa-solid fa-chevron-left', 'fa-solid fa-chevron-right', 'fa-solid fa-chevron-up', 'fa-solid fa-chevron-down',
        'fa-solid fa-bars', 'fa-solid fa-times-circle', 'fa-solid fa-check-circle', 'fa-solid fa-exclamation-triangle',
        'fa-solid fa-info-circle', 'fa-solid fa-question-circle', 'fa-solid fa-ban', 'fa-solid fa-sync',
        'fa-solid fa-redo', 'fa-solid fa-undo', 'fa-solid fa-expand', 'fa-solid fa-compress',
        'fa-solid fa-print', 'fa-solid fa-save', 'fa-solid fa-share-alt', 'fa-solid fa-share-square',
        'fa-solid fa-external-link-alt', 'fa-solid fa-sign-in-alt', 'fa-solid fa-sign-out-alt', 'fa-solid fa-filter',
        'fa-solid fa-sort', 'fa-solid fa-sort-up', 'fa-solid fa-sort-down', 'fa-solid fa-ellipsis-h',
        'fa-solid fa-ellipsis-v', 'fa-solid fa-caret-left', 'fa-solid fa-caret-right', 'fa-solid fa-caret-up',
        'fa-solid fa-caret-down', 'fa-solid fa-address-book', 'fa-solid fa-address-card', 'fa-solid fa-archive',
        'fa-solid fa-balance-scale', 'fa-solid fa-birthday-cake', 'fa-solid fa-book', 'fa-solid fa-briefcase',
        'fa-solid fa-building', 'fa-solid fa-bullhorn', 'fa-solid fa-bullseye', 'fa-solid fa-calculator',
        'fa-solid fa-calendar-alt', 'fa-solid fa-certificate', 'fa-solid fa-chart-area', 'fa-solid fa-chart-bar',
        'fa-solid fa-chart-line', 'fa-solid fa-chart-pie', 'fa-solid fa-clipboard', 'fa-solid fa-coffee',
        'fa-solid fa-comment', 'fa-solid fa-comments', 'fa-solid fa-compass', 'fa-solid fa-copy',
        'fa-solid fa-copyright', 'fa-solid fa-cut', 'fa-solid fa-database', 'fa-solid fa-desktop',
        'fa-solid fa-dot-circle', 'fa-solid fa-download', 'fa-solid fa-edit', 'fa-solid fa-envelope-open',
        'fa-solid fa-envelope-square', 'fa-solid fa-eraser', 'fa-solid fa-fax', 'fa-solid fa-file-alt',
        'fa-solid fa-file-archive', 'fa-solid fa-file-audio', 'fa-solid fa-file-code', 'fa-solid fa-file-excel',
        'fa-solid fa-file-image', 'fa-solid fa-file-pdf', 'fa-solid fa-file-powerpoint', 'fa-solid fa-file-video',
        'fa-solid fa-file-word', 'fa-solid fa-film', 'fa-solid fa-fire', 'fa-solid fa-fire-extinguisher',
        'fa-solid fa-flag-checkered', 'fa-solid fa-flask', 'fa-solid fa-futbol', 'fa-solid fa-gamepad',
        'fa-solid fa-gavel', 'fa-solid fa-gem', 'fa-solid fa-gift', 'fa-solid fa-glass-martini',
        'fa-solid fa-globe', 'fa-solid fa-graduation-cap', 'fa-solid fa-hdd', 'fa-solid fa-headphones',
        'fa-solid fa-heartbeat', 'fa-solid fa-history', 'fa-solid fa-home', 'fa-solid fa-hospital',
        'fa-solid fa-hourglass', 'fa-solid fa-id-badge', 'fa-solid fa-id-card', 'fa-solid fa-industry',
        'fa-solid fa-info', 'fa-solid fa-keyboard', 'fa-solid fa-language', 'fa-solid fa-laptop',
        'fa-solid fa-lightbulb', 'fa-solid fa-list', 'fa-solid fa-list-alt', 'fa-solid fa-list-ol',
        'fa-solid fa-list-ul', 'fa-solid fa-magic', 'fa-solid fa-magnet', 'fa-solid fa-map-marker',
        'fa-solid fa-map-pin', 'fa-solid fa-map-signs', 'fa-solid fa-medkit', 'fa-solid fa-microchip',
        'fa-solid fa-microphone', 'fa-solid fa-mobile', 'fa-solid fa-money-bill-alt', 'fa-solid fa-moon',
        'fa-solid fa-music', 'fa-solid fa-newspaper', 'fa-solid fa-paint-brush', 'fa-solid fa-paper-plane',
        'fa-solid fa-paste', 'fa-solid fa-pause', 'fa-solid fa-pause-circle', 'fa-solid fa-phone-square',
        'fa-solid fa-phone-volume', 'fa-solid fa-play', 'fa-solid fa-play-circle', 'fa-solid fa-plug',
        'fa-solid fa-plus-circle', 'fa-solid fa-plus-square', 'fa-solid fa-podcast', 'fa-solid fa-portrait',
        'fa-solid fa-power-off', 'fa-solid fa-puzzle-piece', 'fa-solid fa-qrcode', 'fa-solid fa-question',
        'fa-solid fa-quote-left', 'fa-solid fa-quote-right', 'fa-solid fa-random', 'fa-solid fa-recycle',
        'fa-solid fa-reply', 'fa-solid fa-reply-all', 'fa-solid fa-rss', 'fa-solid fa-rss-square',
        'fa-solid fa-save', 'fa-solid fa-screwdriver', 'fa-solid fa-search-minus', 'fa-solid fa-search-plus',
        'fa-solid fa-share', 'fa-solid fa-share-alt', 'fa-solid fa-share-square', 'fa-solid fa-shield-alt',
        'fa-solid fa-ship', 'fa-solid fa-shopping-bag', 'fa-solid fa-shopping-basket', 'fa-solid fa-shopping-cart',
        'fa-solid fa-shower', 'fa-solid fa-sign-language', 'fa-solid fa-signal', 'fa-solid fa-sitemap',
        'fa-solid fa-sliders-h', 'fa-solid fa-smile', 'fa-solid fa-snowflake', 'fa-solid fa-sort-alpha-down',
        'fa-solid fa-sort-alpha-up', 'fa-solid fa-sort-amount-down', 'fa-solid fa-sort-amount-up', 'fa-solid fa-sort-numeric-down',
        'fa-solid fa-sort-numeric-up', 'fa-solid fa-spinner', 'fa-solid fa-square', 'fa-solid fa-star-half',
        'fa-solid fa-sticky-note', 'fa-solid fa-stop', 'fa-solid fa-stop-circle', 'fa-solid fa-stream',
        'fa-solid fa-subway', 'fa-solid fa-suitcase', 'fa-solid fa-sun', 'fa-solid fa-sync-alt',
        'fa-solid fa-tablet', 'fa-solid fa-tachometer-alt', 'fa-solid fa-tag', 'fa-solid fa-tags',
        'fa-solid fa-tasks', 'fa-solid fa-taxi', 'fa-solid fa-thumbs-down', 'fa-solid fa-thumbs-up',
        'fa-solid fa-ticket-alt', 'fa-solid fa-times-circle', 'fa-solid fa-tint', 'fa-solid fa-toggle-off',
        'fa-solid fa-toggle-on', 'fa-solid fa-toolbox', 'fa-solid fa-trademark', 'fa-solid fa-train',
        'fa-solid fa-tram', 'fa-solid fa-trash-alt', 'fa-solid fa-tree', 'fa-solid fa-trophy',
        'fa-solid fa-truck', 'fa-solid fa-tv', 'fa-solid fa-umbrella', 'fa-solid fa-university',
        'fa-solid fa-unlock', 'fa-solid fa-unlock-alt', 'fa-solid fa-upload', 'fa-solid fa-user-circle',
        'fa-solid fa-user-md', 'fa-solid fa-user-plus', 'fa-solid fa-user-secret', 'fa-solid fa-user-times',
        'fa-solid fa-users', 'fa-solid fa-utensils', 'fa-solid fa-utensil-spoon', 'fa-solid fa-venus',
        'fa-solid fa-venus-double', 'fa-solid fa-venus-mars', 'fa-solid fa-vial', 'fa-solid fa-vials',
        'fa-solid fa-video-slash', 'fa-solid fa-volleyball-ball', 'fa-solid fa-volume-down', 'fa-solid fa-volume-off',
        'fa-solid fa-volume-up', 'fa-solid fa-warehouse', 'fa-solid fa-weight', 'fa-solid fa-wheelchair',
        'fa-solid fa-wifi', 'fa-solid fa-window-close', 'fa-solid fa-window-maximize', 'fa-solid fa-window-minimize',
        'fa-solid fa-window-restore', 'fa-solid fa-wine-glass', 'fa-solid fa-wrench', 'fa-solid fa-yin-yang'
    ],
    'Regular': [
        'fa-regular fa-user', 'fa-regular fa-envelope', 'fa-regular fa-bell', 'fa-regular fa-calendar',
        'fa-regular fa-clock', 'fa-regular fa-heart', 'fa-regular fa-star', 'fa-regular fa-bookmark',
        'fa-regular fa-flag', 'fa-regular fa-circle', 'fa-regular fa-square', 'fa-regular fa-file',
        'fa-regular fa-folder', 'fa-regular fa-image', 'fa-regular fa-comment', 'fa-regular fa-comments',
        'fa-regular fa-thumbs-up', 'fa-regular fa-thumbs-down', 'fa-regular fa-paper-plane', 'fa-regular fa-clipboard',
        'fa-regular fa-calendar-check', 'fa-regular fa-calendar-minus', 'fa-regular fa-calendar-plus', 'fa-regular fa-calendar-times',
        'fa-regular fa-caret-square-down', 'fa-regular fa-caret-square-left', 'fa-regular fa-caret-square-right', 'fa-regular fa-caret-square-up',
        'fa-regular fa-chart-bar', 'fa-regular fa-check-circle', 'fa-regular fa-check-square', 'fa-regular fa-circle',
        'fa-regular fa-clipboard', 'fa-regular fa-clock', 'fa-regular fa-clone', 'fa-regular fa-closed-captioning',
        'fa-regular fa-comment-alt', 'fa-regular fa-comment-dots', 'fa-regular fa-comments', 'fa-regular fa-compass',
        'fa-regular fa-copy', 'fa-regular fa-copyright', 'fa-regular fa-credit-card', 'fa-regular fa-dot-circle',
        'fa-regular fa-edit', 'fa-regular fa-envelope-open', 'fa-regular fa-eye', 'fa-regular fa-eye-slash',
        'fa-regular fa-file-alt', 'fa-regular fa-file-archive', 'fa-regular fa-file-audio', 'fa-regular fa-file-code',
        'fa-regular fa-file-excel', 'fa-regular fa-file-image', 'fa-regular fa-file-pdf', 'fa-regular fa-file-powerpoint',
        'fa-regular fa-file-video', 'fa-regular fa-file-word', 'fa-regular fa-flag', 'fa-regular fa-flushed',
        'fa-regular fa-folder-open', 'fa-regular fa-font-awesome-logo-full', 'fa-regular fa-frown', 'fa-regular fa-futbol',
        'fa-regular fa-gem', 'fa-regular fa-grimace', 'fa-regular fa-grin', 'fa-regular fa-grin-alt',
        'fa-regular fa-grin-beam', 'fa-regular fa-grin-beam-sweat', 'fa-regular fa-grin-hearts', 'fa-regular fa-grin-squint',
        'fa-regular fa-grin-squint-tears', 'fa-regular fa-grin-stars', 'fa-regular fa-grin-tears', 'fa-regular fa-grin-tongue',
        'fa-regular fa-grin-tongue-squint', 'fa-regular fa-grin-tongue-wink', 'fa-regular fa-grin-wink', 'fa-regular fa-hand-lizard',
        'fa-regular fa-hand-paper', 'fa-regular fa-hand-peace', 'fa-regular fa-hand-point-down', 'fa-regular fa-hand-point-left',
        'fa-regular fa-hand-point-right', 'fa-regular fa-hand-point-up', 'fa-regular fa-hand-pointer', 'fa-regular fa-hand-rock',
        'fa-regular fa-hand-scissors', 'fa-regular fa-hand-spock', 'fa-regular fa-handshake', 'fa-regular fa-hdd',
        'fa-regular fa-heart', 'fa-regular fa-hospital', 'fa-regular fa-hourglass', 'fa-regular fa-id-badge',
        'fa-regular fa-id-card', 'fa-regular fa-image', 'fa-regular fa-images', 'fa-regular fa-keyboard',
        'fa-regular fa-kiss', 'fa-regular fa-kiss-beam', 'fa-regular fa-kiss-wink-heart', 'fa-regular fa-laugh',
        'fa-regular fa-laugh-beam', 'fa-regular fa-laugh-squint', 'fa-regular fa-laugh-wink', 'fa-regular fa-lemon',
        'fa-regular fa-life-ring', 'fa-regular fa-lightbulb', 'fa-regular fa-list-alt', 'fa-regular fa-map',
        'fa-regular fa-meh', 'fa-regular fa-meh-rolling-eyes', 'fa-regular fa-minus-square', 'fa-regular fa-money-bill-alt',
        'fa-regular fa-moon', 'fa-regular fa-newspaper', 'fa-regular fa-object-group', 'fa-regular fa-object-ungroup',
        'fa-regular fa-paper-plane', 'fa-regular fa-pause-circle', 'fa-regular fa-play-circle', 'fa-regular fa-plus-square',
        'fa-regular fa-question-circle', 'fa-regular fa-registered', 'fa-regular fa-sad-cry', 'fa-regular fa-sad-tear',
        'fa-regular fa-save', 'fa-regular fa-share-square', 'fa-regular fa-smile', 'fa-regular fa-smile-beam',
        'fa-regular fa-smile-wink', 'fa-regular fa-snowflake', 'fa-regular fa-square', 'fa-regular fa-star',
        'fa-regular fa-star-half', 'fa-regular fa-sticky-note', 'fa-regular fa-stop-circle', 'fa-regular fa-sun',
        'fa-regular fa-surprise', 'fa-regular fa-thumbs-down', 'fa-regular fa-thumbs-up', 'fa-regular fa-times-circle',
        'fa-regular fa-tired', 'fa-regular fa-trash-alt', 'fa-regular fa-user-circle', 'fa-regular fa-window-close',
        'fa-regular fa-window-maximize', 'fa-regular fa-window-minimize', 'fa-regular fa-window-restore'
    ],
    'Brands': [
        'fa-brands fa-facebook', 'fa-brands fa-twitter', 'fa-brands fa-instagram', 'fa-brands fa-linkedin',
        'fa-brands fa-youtube', 'fa-brands fa-github', 'fa-brands fa-google', 'fa-brands fa-apple',
        'fa-brands fa-amazon', 'fa-brands fa-microsoft', 'fa-brands fa-android', 'fa-brands fa-whatsapp',
        'fa-brands fa-telegram', 'fa-brands fa-discord', 'fa-brands fa-slack', 'fa-brands fa-wordpress',
        'fa-brands fa-500px', 'fa-brands fa-accessible-icon', 'fa-brands fa-accusoft', 'fa-brands fa-adn',
        'fa-brands fa-adversal', 'fa-brands fa-affiliatetheme', 'fa-brands fa-algolia', 'fa-brands fa-alipay',
        'fa-brands fa-amazon-pay', 'fa-brands fa-amilia', 'fa-brands fa-android', 'fa-brands fa-angellist',
        'fa-brands fa-angrycreative', 'fa-brands fa-angular', 'fa-brands fa-app-store', 'fa-brands fa-app-store-ios',
        'fa-brands fa-apper', 'fa-brands fa-apple-pay', 'fa-brands fa-asymmetrik', 'fa-brands fa-audible',
        'fa-brands fa-autoprefixer', 'fa-brands fa-avianex', 'fa-brands fa-aviato', 'fa-brands fa-aws',
        'fa-brands fa-bandcamp', 'fa-brands fa-behance', 'fa-brands fa-behance-square', 'fa-brands fa-bimobject',
        'fa-brands fa-bitbucket', 'fa-brands fa-bitcoin', 'fa-brands fa-bity', 'fa-brands fa-black-tie',
        'fa-brands fa-blackberry', 'fa-brands fa-blogger', 'fa-brands fa-blogger-b', 'fa-brands fa-bluetooth',
        'fa-brands fa-bluetooth-b', 'fa-brands fa-btc', 'fa-brands fa-buromobelexperte', 'fa-brands fa-buysellads',
        'fa-brands fa-cc-amazon-pay', 'fa-brands fa-cc-amex', 'fa-brands fa-cc-apple-pay', 'fa-brands fa-cc-diners-club',
        'fa-brands fa-cc-discover', 'fa-brands fa-cc-jcb', 'fa-brands fa-cc-mastercard', 'fa-brands fa-cc-paypal',
        'fa-brands fa-cc-stripe', 'fa-brands fa-cc-visa', 'fa-brands fa-centercode', 'fa-brands fa-chrome',
        'fa-brands fa-cloudscale', 'fa-brands fa-cloudsmith', 'fa-brands fa-cloudversify', 'fa-brands fa-codepen',
        'fa-brands fa-codiepie', 'fa-brands fa-connectdevelop', 'fa-brands fa-contao', 'fa-brands fa-cpanel',
        'fa-brands fa-creative-commons', 'fa-brands fa-creative-commons-by', 'fa-brands fa-creative-commons-nc',
        'fa-brands fa-creative-commons-nc-eu', 'fa-brands fa-creative-commons-nc-jp', 'fa-brands fa-creative-commons-nd',
        'fa-brands fa-creative-commons-pd', 'fa-brands fa-creative-commons-pd-alt', 'fa-brands fa-creative-commons-remix',
        'fa-brands fa-creative-commons-sa', 'fa-brands fa-creative-commons-sampling', 'fa-brands fa-creative-commons-sampling-plus',
        'fa-brands fa-creative-commons-share', 'fa-brands fa-creative-commons-zero', 'fa-brands fa-critical-role',
        'fa-brands fa-css3', 'fa-brands fa-css3-alt', 'fa-brands fa-cuttlefish', 'fa-brands fa-d-and-d',
        'fa-brands fa-d-and-d-beyond', 'fa-brands fa-dashcube', 'fa-brands fa-delicious', 'fa-brands fa-deploydog',
        'fa-brands fa-deskpro', 'fa-brands fa-dev', 'fa-brands fa-deviantart', 'fa-brands fa-digg',
        'fa-brands fa-digital-ocean', 'fa-brands fa-discord', 'fa-brands fa-discourse', 'fa-brands fa-dochub',
        'fa-brands fa-docker', 'fa-brands fa-draft2digital', 'fa-brands fa-dribbble', 'fa-brands fa-dribbble-square',
        'fa-brands fa-dropbox', 'fa-brands fa-drupal', 'fa-brands fa-dyalog', 'fa-brands fa-earlybirds',
        'fa-brands fa-ebay', 'fa-brands fa-edge', 'fa-brands fa-elementor', 'fa-brands fa-ello',
        'fa-brands fa-ember', 'fa-brands fa-empire', 'fa-brands fa-envira', 'fa-brands fa-erlang',
        'fa-brands fa-ethereum', 'fa-brands fa-etsy', 'fa-brands fa-expeditedssl', 'fa-brands fa-facebook',
        'fa-brands fa-facebook-f', 'fa-brands fa-facebook-messenger', 'fa-brands fa-facebook-square', 'fa-brands fa-fantasy-flight-games',
        'fa-brands fa-firefox', 'fa-brands fa-first-order', 'fa-brands fa-first-order-alt', 'fa-brands fa-firstdraft',
        'fa-brands fa-flickr', 'fa-brands fa-flipboard', 'fa-brands fa-fly', 'fa-brands fa-font-awesome',
        'fa-brands fa-font-awesome-alt', 'fa-brands fa-font-awesome-flag', 'fa-brands fa-fonticons', 'fa-brands fa-fonticons-fi',
        'fa-brands fa-fort-awesome', 'fa-brands fa-fort-awesome-alt', 'fa-brands fa-forumbee', 'fa-brands fa-foursquare',
        'fa-brands fa-free-code-camp', 'fa-brands fa-freebsd', 'fa-brands fa-fulcrum', 'fa-brands fa-galactic-republic',
        'fa-brands fa-galactic-senate', 'fa-brands fa-get-pocket', 'fa-brands fa-gg', 'fa-brands fa-gg-circle',
        'fa-brands fa-git', 'fa-brands fa-git-square', 'fa-brands fa-github', 'fa-brands fa-github-alt',
        'fa-brands fa-github-square', 'fa-brands fa-gitkraken', 'fa-brands fa-gitlab', 'fa-brands fa-gitter',
        'fa-brands fa-glide', 'fa-brands fa-glide-g', 'fa-brands fa-gofore', 'fa-brands fa-goodreads',
        'fa-brands fa-goodreads-g', 'fa-brands fa-google-drive', 'fa-brands fa-google-play', 'fa-brands fa-google-plus',
        'fa-brands fa-google-plus-g', 'fa-brands fa-google-plus-square', 'fa-brands fa-google-wallet', 'fa-brands fa-gratipay',
        'fa-brands fa-grav', 'fa-brands fa-gripfire', 'fa-brands fa-grunt', 'fa-brands fa-gulp',
        'fa-brands fa-hacker-news', 'fa-brands fa-hacker-news-square', 'fa-brands fa-hackerrank', 'fa-brands fa-hips',
        'fa-brands fa-hire-a-helper', 'fa-brands fa-hooli', 'fa-brands fa-hornbill', 'fa-brands fa-hotjar',
        'fa-brands fa-houzz', 'fa-brands fa-html5', 'fa-brands fa-hubspot', 'fa-brands fa-imdb',
        'fa-brands fa-instagram', 'fa-brands fa-intercom', 'fa-brands fa-internet-explorer', 'fa-brands fa-ioxhost',
        'fa-brands fa-itunes', 'fa-brands fa-itunes-note', 'fa-brands fa-java', 'fa-brands fa-jedi-order',
        'fa-brands fa-jenkins', 'fa-brands fa-joget', 'fa-brands fa-joomla', 'fa-brands fa-js',
        'fa-brands fa-js-square', 'fa-brands fa-jsfiddle', 'fa-brands fa-kaggle', 'fa-brands fa-keybase',
        'fa-brands fa-keycdn', 'fa-brands fa-kickstarter', 'fa-brands fa-kickstarter-k', 'fa-brands fa-korvue',
        'fa-brands fa-laravel', 'fa-brands fa-lastfm', 'fa-brands fa-lastfm-square', 'fa-brands fa-leanpub',
        'fa-brands fa-less', 'fa-brands fa-line', 'fa-brands fa-linkedin', 'fa-brands fa-linkedin-in',
        'fa-brands fa-linode', 'fa-brands fa-linux', 'fa-brands fa-lyft', 'fa-brands fa-magento',
        'fa-brands fa-mailchimp', 'fa-brands fa-mandalorian', 'fa-brands fa-markdown', 'fa-brands fa-mastodon',
        'fa-brands fa-maxcdn', 'fa-brands fa-medapps', 'fa-brands fa-medium', 'fa-brands fa-medium-m',
        'fa-brands fa-medrt', 'fa-brands fa-meetup', 'fa-brands fa-megaport', 'fa-brands fa-mendeley',
        'fa-brands fa-microblog', 'fa-brands fa-microsoft', 'fa-brands fa-mix', 'fa-brands fa-mixcloud',
        'fa-brands fa-mizuni', 'fa-brands fa-modx', 'fa-brands fa-monero', 'fa-brands fa-napster',
        'fa-brands fa-neos', 'fa-brands fa-nimblr', 'fa-brands fa-node', 'fa-brands fa-node-js',
        'fa-brands fa-npm', 'fa-brands fa-ns8', 'fa-brands fa-nutritionix', 'fa-brands fa-odnoklassniki',
        'fa-brands fa-odnoklassniki-square', 'fa-brands fa-old-republic', 'fa-brands fa-opencart', 'fa-brands fa-openid',
        'fa-brands fa-opera', 'fa-brands fa-optin-monster', 'fa-brands fa-osi', 'fa-brands fa-page4',
        'fa-brands fa-pagelines', 'fa-brands fa-palfed', 'fa-brands fa-patreon', 'fa-brands fa-paypal',
        'fa-brands fa-penny-arcade', 'fa-brands fa-periscope', 'fa-brands fa-phabricator', 'fa-brands fa-phoenix-framework',
        'fa-brands fa-php', 'fa-brands fa-pied-piper', 'fa-brands fa-pied-piper-alt', 'fa-brands fa-pied-piper-hat',
        'fa-brands fa-pied-piper-pp', 'fa-brands fa-pinterest', 'fa-brands fa-pinterest-p', 'fa-brands fa-pinterest-square',
        'fa-brands fa-playstation', 'fa-brands fa-product-hunt', 'fa-brands fa-pushed', 'fa-brands fa-python',
        'fa-brands fa-qq', 'fa-brands fa-quinscape', 'fa-brands fa-quora', 'fa-brands fa-r-project',
        'fa-brands fa-ravelry', 'fa-brands fa-react', 'fa-brands fa-readme', 'fa-brands fa-rebel',
        'fa-brands fa-red-river', 'fa-brands fa-reddit', 'fa-brands fa-reddit-alien', 'fa-brands fa-reddit-square',
        'fa-brands fa-redhat', 'fa-brands fa-renren', 'fa-brands fa-replyd', 'fa-brands fa-researchgate',
        'fa-brands fa-resolving', 'fa-brands fa-rev', 'fa-brands fa-rocketchat', 'fa-brands fa-rockrms',
        'fa-brands fa-safari', 'fa-brands fa-sass', 'fa-brands fa-schlix', 'fa-brands fa-scribd',
        'fa-brands fa-searchengin', 'fa-brands fa-sellcast', 'fa-brands fa-sellsy', 'fa-brands fa-servicestack',
        'fa-brands fa-shirtsinbulk', 'fa-brands fa-shopify', 'fa-brands fa-shopware', 'fa-brands fa-simplybuilt',
        'fa-brands fa-sistrix', 'fa-brands fa-sith', 'fa-brands fa-sketch', 'fa-brands fa-skyatlas',
        'fa-brands fa-skype', 'fa-brands fa-slack', 'fa-brands fa-slack-hash', 'fa-brands fa-slideshare',
        'fa-brands fa-snapchat', 'fa-brands fa-snapchat-ghost', 'fa-brands fa-snapchat-square', 'fa-brands fa-soundcloud',
        'fa-brands fa-sourcetree', 'fa-brands fa-speakap', 'fa-brands fa-spotify', 'fa-brands fa-squarespace',
        'fa-brands fa-stack-exchange', 'fa-brands fa-stack-overflow', 'fa-brands fa-staylinked', 'fa-brands fa-steam',
        'fa-brands fa-steam-square', 'fa-brands fa-steam-symbol', 'fa-brands fa-sticker-mule', 'fa-brands fa-strava',
        'fa-brands fa-stripe', 'fa-brands fa-stripe-s', 'fa-brands fa-studiovinari', 'fa-brands fa-stumbleupon',
        'fa-brands fa-stumbleupon-circle', 'fa-brands fa-superpowers', 'fa-brands fa-supple', 'fa-brands fa-teamspeak',
        'fa-brands fa-telegram', 'fa-brands fa-telegram-plane', 'fa-brands fa-tencent-weibo', 'fa-brands fa-the-red-yeti',
        'fa-brands fa-themeco', 'fa-brands fa-themeisle', 'fa-brands fa-think-peaks', 'fa-brands fa-trade-federation',
        'fa-brands fa-trello', 'fa-brands fa-tripadvisor', 'fa-brands fa-tumblr', 'fa-brands fa-tumblr-square',
        'fa-brands fa-twitch', 'fa-brands fa-twitter', 'fa-brands fa-twitter-square', 'fa-brands fa-typo3',
        'fa-brands fa-uber', 'fa-brands fa-ubuntu', 'fa-brands fa-uikit', 'fa-brands fa-uniregistry',
        'fa-brands fa-untappd', 'fa-brands fa-ups', 'fa-brands fa-usb', 'fa-brands fa-usps',
        'fa-brands fa-ussunnah', 'fa-brands fa-vaadin', 'fa-brands fa-viacoin', 'fa-brands fa-viadeo',
        'fa-brands fa-viadeo-square', 'fa-brands fa-viber', 'fa-brands fa-vimeo', 'fa-brands fa-vimeo-square',
        'fa-brands fa-vimeo-v', 'fa-brands fa-vine', 'fa-brands fa-vk', 'fa-brands fa-vnv',
        'fa-brands fa-vuejs', 'fa-brands fa-weebly', 'fa-brands fa-weibo', 'fa-brands fa-weixin',
        'fa-brands fa-whatsapp', 'fa-brands fa-whatsapp-square', 'fa-brands fa-whmcs', 'fa-brands fa-wikipedia-w',
        'fa-brands fa-windows', 'fa-brands fa-wix', 'fa-brands fa-wizards-of-the-coast', 'fa-brands fa-wolf-pack-battalion',
        'fa-brands fa-wordpress', 'fa-brands fa-wordpress-simple', 'fa-brands fa-wpbeginner', 'fa-brands fa-wpexplorer',
        'fa-brands fa-wpforms', 'fa-brands fa-xbox', 'fa-brands fa-xing', 'fa-brands fa-xing-square',
        'fa-brands fa-y-combinator', 'fa-brands fa-yahoo', 'fa-brands fa-yandex', 'fa-brands fa-yandex-international',
        'fa-brands fa-yarn', 'fa-brands fa-yelp', 'fa-brands fa-yoast', 'fa-brands fa-youtube',
        'fa-brands fa-youtube-square', 'fa-brands fa-zhihu'
    ]
};

            // Load icons into the modal
            function loadIcons(searchTerm = '') {
                iconsContainer.innerHTML = '';
                
                Object.entries(fontAwesomeIcons).forEach(([category, icons]) => {
                    const filteredIcons = searchTerm 
                        ? icons.filter(icon => icon.toLowerCase().includes(searchTerm.toLowerCase())) 
                        : icons;
                    
                    if (filteredIcons.length === 0) return;
                    
                    const categoryDiv = document.createElement('div');
                    categoryDiv.className = 'col-12';
                    categoryDiv.innerHTML = `<h5 class="mt-3 mb-2">${category}</h5>`;
                    iconsContainer.appendChild(categoryDiv);
                    
                    filteredIcons.forEach(icon => {
                        const iconDiv = document.createElement('div');
                        iconDiv.className = 'col-md-3 col-sm-4 col-6 text-center';
                        iconDiv.innerHTML = `
                            <div class="icon-item p-3 border rounded mb-2 cursor-pointer" data-icon="${icon}">
                                <i class="${icon} fa-2x mb-2"></i>
                                <div class="small text-truncate">${icon}</div>
                            </div>
                        `;
                        iconsContainer.appendChild(iconDiv);
                    });
                });
                
                // Add click event to icons
                document.querySelectorAll('.icon-item').forEach(item => {
                    item.addEventListener('click', function() {
                        const iconClass = this.getAttribute('data-icon');
                        if (currentIconInput) {
                            currentIconInput.value = iconClass;
                        }
                        iconPickerModal.hide();
                    });
                });
            }

            // Search functionality
            iconSearch.addEventListener('input', function() {
                loadIcons(this.value);
            });

            // Open icon picker modal
            document.addEventListener('click', function(e) {
                if (e.target.classList.contains('icon-picker-btn') || e.target.closest('.icon-picker-btn')) {
                    const btn = e.target.classList.contains('icon-picker-btn') ? e.target : e.target.closest('.icon-picker-btn');
                    currentIconInput = btn.closest('.input-group').querySelector('.item-icon');
                    loadIcons();
                    iconPickerModal.show();
                }
            });

            // Add new item
            addItemButton.addEventListener('click', function () {
                const newItem = `
                    <div class="dynamic-item mb-3">
                        <div class="row g-2">
                            <div class="col">
                                <div class="input-group">
                                    <input type="text" class="form-control item-icon" placeholder="{{ translate('Icon') }}">
                                    <button type="button" class="btn btn-outline-secondary icon-picker-btn">
                                        <i class="fa-solid fa-icons"></i>
                                    </button>
                                </div>
                            </div>
                            <div class="col">
                                <input type="text" class="form-control item-title" placeholder="{{ translate('Title') }}">
                            </div>
                            <div class="col">
                                <input type="text" class="form-control item-description" placeholder="{{ translate('Description') }}">
                            </div>
                            <div class="col-auto">
                                <button type="button" class="btn btn-danger remove-item">{{ translate('Remove') }}</button>
                            </div>
                        </div>
                    </div>`;
                container.insertAdjacentHTML('beforeend', newItem);
            });

            // Remove item
            container.addEventListener('click', function (e) {
                if (e.target.classList.contains('remove-item')) {
                    e.target.closest('.dynamic-item').remove();
                }
            });

            // Form submission
            form.addEventListener('submit', function () {
                const items = [];
                container.querySelectorAll('.dynamic-item').forEach(item => {
                    const icon = item.querySelector('.item-icon').value;
                    const title = item.querySelector('.item-title').value;
                    const description = item.querySelector('.item-description').value;
                    items.push({ icon, title, description });
                });
                jsonDataInput.value = JSON.stringify(items); // Serialize items into JSON
            });
        });
    </script>

    <style>
        .cursor-pointer {
            cursor: pointer;
        }
        .icon-item:hover {
            background-color: #f8f9fa;
            transform: scale(1.05);
            transition: all 0.2s;
        }
    </style>
@endsection

