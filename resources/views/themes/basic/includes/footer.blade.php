<footer class="footer">
    <div class="footer-upper">
        <div class="container container-custom">
            <livewire:newsletter.footer />
            @if ($themeSettings->footer->footer_about || $footerLinks->count() > 0)
                <div class="row g-5">
                    @if ($themeSettings->footer->footer_about)
                        <div class="col-12 col-lg-4">
                            <a href="{{ route('home') }}" class="logo mb-4">
                                <img src="{{ asset($themeSettings->footer->footer_logo) }}"
                                    alt="{{ @$settings->general->site_name }}" />
                            </a>
                            <p class="footer-text">{{ $themeSettings->footer->footer_about_content }}</p>
                            @php
                                $socialLinksSettings = @$settings->social_links;
                                $hasSocialLinks =
                                    $socialLinksSettings->facebook ||
                                    $socialLinksSettings->x ||
                                    $socialLinksSettings->linkedin ||
                                    $socialLinksSettings->youtube ||
                                    $socialLinksSettings->instagram ||
                                    $socialLinksSettings->pinterest;
                            @endphp
                            @if ($hasSocialLinks)
                                <div class="socials socials-footer mt-4">
                                    @if ($socialLinksSettings->facebook)
                                        <a href="https://facebook.com/{{ $socialLinksSettings->facebook }}"
                                            target="_blank" class="social-btn social-facebook">
                                            <i class="fab fa-facebook-f"></i>
                                        </a>
                                    @endif
                                    @if ($socialLinksSettings->x)
                                        <a href="https://x.com/{{ $socialLinksSettings->x }}" target="_blank"
                                            class="social-btn social-x">
                                            <i class="fab fa-x-twitter"></i>
                                        </a>
                                    @endif
                                    @if ($socialLinksSettings->linkedin)
                                        <a href="https://linkedin.com/in/{{ $socialLinksSettings->linkedin }}"
                                            target="_blank" class="social-btn social-linkedin">
                                            <i class="fab fa-linkedin"></i>
                                        </a>
                                    @endif
                                    @if ($socialLinksSettings->youtube)
                                        <a href="https://youtube.com/{{ '@' . $socialLinksSettings->youtube }}"
                                            target="_blank" class="social-btn social-youtube">
                                            <i class="fab fa-youtube"></i>
                                        </a>
                                    @endif
                                    @if ($socialLinksSettings->instagram)
                                        <a href="https://instagram.com/{{ $socialLinksSettings->instagram }}"
                                            target="_blank" class="social-btn social-instagram">
                                            <i class="fab fa-instagram"></i>
                                        </a>
                                    @endif
                                    @if ($socialLinksSettings->pinterest)
                                        <a href="https://pinterest.com/{{ $socialLinksSettings->pinterest }}"
                                            target="_blank" class="social-btn social-pinterest">
                                            <i class="fab fa-pinterest"></i>
                                        </a>
                                    @endif
                                </div>
                            @endif
                            @if ($themeSettings->footer->footer_items_sold || $themeSettings->footer->footer_sales_amount)
                                <div class="mt-4">
                                    <div class="row row-cols-auto align-items-center g-4">
                                      <a href="" class="live-chat">
                            <span>
                                <svg width="16" height="15" viewBox="0 0 16 15" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M1.56952 5C1.56952 2.5 2.82343 1.25 5.33124 1.25H10.3469C12.8547 1.25 14.1086 2.5 14.1086 5V8.125C14.1086 10.625 12.8547 11.875 10.3469 11.875H10.0334C9.83903 11.875 9.65094 11.9688 9.53182 12.125L8.59139 13.375C8.1776 13.925 7.5005 13.925 7.08671 13.375L6.14628 12.125C6.04596 11.9875 5.81399 11.875 5.64471 11.875H5.33124C2.82343 11.875 1.56952 11.25 1.56952 8.125V7.5" stroke="#ffffff" stroke-width="1.5" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"></path>
                                    <path d="M10.3406 5H10.9738" stroke="#ffffff" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                    <path d="M4.70428 5H8.1588" stroke="#ffffff" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                    <path d="M4.70428 8.125H8.466" stroke="#ffffff" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                </svg>
                            </span>
                            Canlı Destek
                        </a>
                                    </div>
                                </div>
                            @endif
                        </div>
                    @endif
                    <div class="col-12 {{ $themeSettings->footer->footer_about ? 'col-lg-8' : '' }}">
                        <div class="row row-cols-2 row-cols-sm-3 g-5">
                            @foreach ($footerLinks as $footerLink)
                                @if ($footerLink->children->count() > 0)
                                    <div class="col">
                                        <div class="footer-title">
                                            <span class="h5">{{ $footerLink->name }}</span>
                                        </div>
                                        <ul class="footer-links list-unstyled mb-0">
                                            @foreach ($footerLink->children as $child)
                                                <li class="footer-link">
                                                    <a href="{{ $child->link }}"
                                                        {{ $child->isExternal() ? 'target=_blank' : '' }}
                                                        class="footer-text">{{ $child->name }}</a>
                                                </li>
                                            @endforeach
                                        </ul>
                                    </div>
                                @else
                                    <div class="col">
                                        <a href="{{ $footerLink->link }}"
                                            {{ $footerLink->isExternal() ? 'target=_blank' : '' }}
                                            class="footer-link">{{ $footerLink->name }}</a>
                                    </div>
                                @endif
                            @endforeach
                        </div>
                    </div>
                </div>
            @endif
        </div>
    </div>
    <div class="footer-lower">
        <div class="container container-custom">
            <div class="row row-cols-1 row-cols-sm-auto align-items-center justify-content-between g-3">
                <div class="col">
                    <p class="footer-copyright small mb-0">
                        &copy; <span data-year></span>
                        {{ @$settings->general->site_name }} - {{ translate('All rights reserved.') }}.
                    </p>
                </div>
                @if ($themeSettings->footer->footer_payment_methods)
                    <div class="col">
                        <div class="footer-payment">
                            <img src="{{ asset($themeSettings->footer->footer_payment_methods_logo) }}"
                                alt="{{ @$settings->general->site_name }}" />
                        </div>
                    </div>
                @endif
            </div>
        </div>
    </div>
</footer>
