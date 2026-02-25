<aside class="wisiva-sidebar">
    <div class="overlay"></div>
    <div class="wisiva-sidebar-header">
        <a href="{{ route('admin.dashboard') }}" class="wisiva-sidebar-logo">
            <img src="{{ asset($themeSettings->general->logo_light) }}" alt="{{ @$settings->general->site_name }}" />
        </a>
    </div>
    <div class="wisiva-sidebar-menu" data-simplebar>
        <div class="wisiva-sidebar-links">
            <div class="wisiva-sidebar-links-cont">
                <a href="{{ route('admin.dashboard') }}"
                    class="wisiva-sidebar-link {{ request()->segment(2) == 'dashboard' ? 'current' : '' }}">
                    <p class="wisiva-sidebar-link-title">
                        <span><i class="fa-solid fa-table-columns"></i>{{ translate('Dashboard') }}</span>
                    </p>
                </a>
                <div class="wisiva-sidebar-link  {{ request()->segment(2) == 'members' ? 'active' : '' }}"
                    data-dropdown>
                    <p class="wisiva-sidebar-link-title">
                        <span><i class="fas fa-users"></i>{{ translate('Members') }}</span>
                        <span class="arrow"><i class="fas fa-chevron-right fa-sm"></i></span>
                    </p>
                    <div class="wisiva-sidebar-link-menu">
                        <a href="{{ route('admin.members.users.index') }}"
                            class="wisiva-sidebar-link {{ request()->segment(3) == 'users' ? 'current' : '' }}">
                            <p class="wisiva-sidebar-link-title"><span>{{ translate('Users') }}</span></p>
                        </a>
                        <a href="{{ route('admin.members.admins.index') }}"
                            class="wisiva-sidebar-link {{ request()->segment(3) == 'admins' ? 'current' : '' }}">
                            <p class="wisiva-sidebar-link-title"><span>{{ translate('Admins') }}</span></p>
                        </a>
                    </div>
                </div>
            </div>
            <div class="wisiva-sidebar-links-cont">
                <a href="{{ route('admin.items.index') }}"
                    class="wisiva-sidebar-link {{ request()->segment(2) == 'items' ? 'current' : '' }}">
                    <p class="wisiva-sidebar-link-title">
                        <span><i class="fa-solid fa-box-open"></i>{{ translate('Items') }}</span>
                    </p>
                </a>
                <a href="{{ route('admin.transactions.index') }}"
                    class="wisiva-sidebar-link {{ request()->segment(2) == 'transactions' ? 'current' : '' }}">
                    <p class="wisiva-sidebar-link-title">
                        <span><i class="fa-solid fa-receipt"></i>{{ translate('Transactions') }}</span>
                        @if ($sidebar_counters['transactions'])
                            <span class="counter">{{ admcw($sidebar_counters['transactions']) }}</span>
                        @endif
                    </p>
                </a>
                @if (@$settings->actions->refunds)
                    <a href="{{ route('admin.refunds.index') }}"
                        class="wisiva-sidebar-link {{ request()->segment(3) == 'refunds' ? 'current' : '' }}">
                        <p class="wisiva-sidebar-link-title">
                            <span><i class="fa-solid fa-share"></i>{{ translate('Refunds') }}</span>
                            @if ($sidebar_counters['refunds'])
                                <span class="counter">{{ admcw($sidebar_counters['refunds']) }}</span>
                            @endif
                        </p>
                    </a>
                @endif
                <a href="{{ route('admin.packages.index') }}"
                    class="wisiva-sidebar-link {{ request()->segment(2) == 'packages' ? 'current' : '' }}">
                    <p class="wisiva-sidebar-link-title">
                        <span><i class="fas fa-boxes"></i>{{ translate('Paketler') }}</span>
                    </p>
                </a>
                <div class="wisiva-sidebar-link {{ request()->segment(2) == 'forms' || request()->segment(2) == 'form-submissions' ? 'active' : '' }}" data-dropdown>
                    <p class="wisiva-sidebar-link-title">
                        <span><i class="fas fa-boxes"></i>{{ translate('Formlar') }}</span>
                        <span class="arrow"><i class="fas fa-chevron-right fa-sm"></i></span>
                    </p>
                    <div class="wisiva-sidebar-link-menu">
                        <a href="{{ route('admin.offers.index') }}"
                            class="wisiva-sidebar-link {{ request()->segment(2) == 'forms' ? 'current' : '' }}">
                            <p class="wisiva-sidebar-link-title">
                                <span>{{ translate('Formlar') }}</span>
                            </p>
                        </a>
                        <a href="{{ route('admin.offer_submissions.index') }}"
                            class="wisiva-sidebar-link {{ request()->segment(2) == 'form-submissions' ? 'current' : '' }}">
                            <p class="wisiva-sidebar-link-title">
                                <span>{{ translate('Form Yanıtları') }}</span>
                            </p>
                        </a>
                    </div>
                </div>
                <a href="{{ route('admin.ads.index') }}"
                    class="wisiva-sidebar-link {{ request()->segment(2) == 'ads' ? 'current' : '' }}">
                    <p class="wisiva-sidebar-link-title">
                        <span><i class="fas fa-ad"></i>{{ translate('Advertisements') }}</span>
                    </p>
                </a>
                <div class="wisiva-sidebar-link {{ request()->segment(2) == 'records' ? 'active' : '' }}"
                    data-dropdown>
                    <p class="wisiva-sidebar-link-title">
                        <span><i class="fa-solid fa-box-archive"></i>{{ translate('Records') }}</span>
                        <span class="arrow"><i class="fas fa-chevron-right fa-sm"></i></span>
                    </p>
                    <div class="wisiva-sidebar-link-menu">
                        <a href="{{ route('admin.records.sales.index') }}"
                            class="wisiva-sidebar-link {{ request()->segment(3) == 'sales' ? 'current' : '' }}">
                            <p class="wisiva-sidebar-link-title">
                                <span>{{ translate('Sales') }}</span>
                            </p>
                        </a>
                        <a href="{{ route('admin.records.purchases.index') }}"
                            class="wisiva-sidebar-link {{ request()->segment(3) == 'purchases' ? 'current' : '' }}">
                            <p class="wisiva-sidebar-link-title">
                                <span>{{ translate('Purchases') }}</span>
                            </p>
                        </a>
                        <a href="{{ route('admin.records.support-earnings.index') }}"
                            class="wisiva-sidebar-link {{ request()->segment(3) == 'support-earnings' ? 'current' : '' }}">
                            <p class="wisiva-sidebar-link-title">
                                <span>{{ translate('Support Earnings') }}</span>
                            </p>
                        </a>
                        @if (licenseType(2) && @$settings->premium->status)
                            <a href="{{ route('admin.records.premium-earnings.index') }}"
                                class="wisiva-sidebar-link {{ request()->segment(3) == 'premium-earnings' ? 'current' : '' }}">
                                <p class="wisiva-sidebar-link-title">
                                    <span>{{ translate('Premium Earnings') }}</span>
                                </p>
                            </a>
                        @endif
                        <a href="{{ route('admin.records.statements.index') }}"
                            class="wisiva-sidebar-link {{ request()->segment(3) == 'statements' ? 'current' : '' }}">
                            <p class="wisiva-sidebar-link-title">
                                <span>{{ translate('Statements') }}</span>
                            </p>
                        </a>
                    </div>
                </div>
            </div>
            <div class="wisiva-sidebar-links-cont">
                <div class="wisiva-sidebar-link {{ request()->segment(2) == 'kyc' ? 'active' : '' }}" data-dropdown>
                    <p class="wisiva-sidebar-link-title">
                        <span class="w-100"><i class="fa-solid fa-address-card"></i>{{ translate('KYC') }}</span>
                        @if ($sidebar_counters['kyc_verifications'])
                            <span class="counter me-2">{{ admcw($sidebar_counters['kyc_verifications']) }}</span>
                        @endif
                        <span class="arrow"><i class="fas fa-chevron-right fa-sm"></i></span>
                    </p>
                    <div class="wisiva-sidebar-link-menu">
                        <a href="{{ route('admin.kyc.settings') }}"
                            class="wisiva-sidebar-link {{ request()->segment(2) == 'kyc' && request()->segment(3) == 'settings' ? 'current' : '' }}">
                            <p class="wisiva-sidebar-link-title">
                                <span>{{ translate('Settings') }}</span>
                            </p>
                        </a>
                        <a href="{{ route('admin.kyc.kyc-verifications.index') }}"
                            class="wisiva-sidebar-link {{ request()->segment(3) == 'kyc-verifications' ? 'current' : '' }}">
                            <p class="wisiva-sidebar-link-title">
                                <span>{{ translate('Verifications') }}</span>
                                @if ($sidebar_counters['kyc_verifications'])
                                    <span class="counter">{{ admcw($sidebar_counters['kyc_verifications']) }}</span>
                                @endif
                            </p>
                        </a>
                    </div>
                </div>
                <div class="wisiva-sidebar-link {{ request()->segment(2) == 'reports' ? 'active' : '' }}"
                    data-dropdown>
                    <p class="wisiva-sidebar-link-title">
                        <span class="w-100"><i class="fa-solid fa-flag"></i>{{ translate('Reports') }}</span>
                        @if ($sidebar_counters['reports.item_comments'])
                            <span class="counter me-2">{{ admcw($sidebar_counters['reports.item_comments']) }}</span>
                        @endif
                        <span class="arrow"><i class="fas fa-chevron-right fa-sm"></i></span>
                    </p>
                    <div class="wisiva-sidebar-link-menu">
                        <a href="{{ route('admin.reports.item-comments.index') }}"
                            class="wisiva-sidebar-link {{ request()->segment(3) == 'item-comments' ? 'current' : '' }}">
                            <p class="wisiva-sidebar-link-title">
                                <span>{{ translate('Item Comments') }}</span>
                                @if ($sidebar_counters['reports.item_comments'])
                                    <span
                                        class="counter">{{ admcw($sidebar_counters['reports.item_comments']) }}</span>
                                @endif
                            </p>
                        </a>
                    </div>
                </div>
                <div class="wisiva-sidebar-link {{ request()->segment(2) == 'categories' ? 'active' : '' }}"
                    data-dropdown>
                    <p class="wisiva-sidebar-link-title">
                        <span><i class="fa-solid fa-tags"></i>{{ translate('Categories') }}</span>
                        <span class="arrow"><i class="fas fa-chevron-right fa-sm"></i></span>
                    </p>
                    <div class="wisiva-sidebar-link-menu">
                        <a href="{{ route('admin.categories.index') }}"
                            class="wisiva-sidebar-link {{ request()->segment(2) == 'categories' && !request()->routeIs('admin.categories.sub-categories.*') && !request()->routeIs('admin.categories.category-options.*') ? 'current' : '' }}">
                            <p class="wisiva-sidebar-link-title">
                                <span>{{ translate('Main Categories') }}</span>
                            </p>
                        </a>
                        <a href="{{ route('admin.categories.sub-categories.index') }}"
                            class="wisiva-sidebar-link {{ request()->segment(3) == 'sub-categories' ? 'current' : '' }}">
                            <p class="wisiva-sidebar-link-title">
                                <span>{{ translate('Sub Categories') }}</span>
                            </p>
                        </a>
                        <a href="{{ route('admin.categories.category-options.index') }}"
                            class="wisiva-sidebar-link {{ request()->segment(3) == 'category-options' ? 'current' : '' }}">
                            <p class="wisiva-sidebar-link-title">
                                <span>{{ translate('Category Options') }}</span>
                            </p>
                        </a>
                    </div>
                </div>

                @if (@$settings->actions->tickets)
                    <div class="wisiva-sidebar-link {{ request()->segment(2) == 'tickets' ? 'active' : '' }}"
                        data-dropdown>
                        <p class="wisiva-sidebar-link-title">
                            <span><i class="fa-solid fa-inbox"></i>{{ translate('Tickets') }}</span>
                            <span class="arrow"><i class="fas fa-chevron-right fa-sm"></i></span>
                        </p>
                        <div class="wisiva-sidebar-link-menu">
                            <a href="{{ route('admin.tickets.index') }}"
                                class="wisiva-sidebar-link {{ request()->segment(2) == 'tickets' && request()->segment(3) != 'categories' ? 'current' : '' }}">
                                <p class="wisiva-sidebar-link-title">
                                    <span>{{ translate('Tickets') }}</span>
                                </p>
                            </a>
                            <a href="{{ route('admin.tickets.categories.index') }}"
                                class="wisiva-sidebar-link {{ request()->segment(2) == 'tickets' && request()->segment(3) == 'categories' ? 'current' : '' }}">
                                <p class="wisiva-sidebar-link-title">
                                    <span>{{ translate('Categories') }}</span>
                                </p>
                            </a>
                        </div>
                    </div>
                @endif
                @if (isAddonActive('help_center'))
                    <div class="wisiva-sidebar-link {{ request()->segment(2) == 'help' ? 'active' : '' }}"
                        data-dropdown>
                        <p class="wisiva-sidebar-link-title">
                            <span><i class="fa-regular fa-circle-question"></i>{{ translate('Help Center') }}</span>
                            {!! addonBadge('help_center') !!}
                            <span class="arrow"><i class="fas fa-chevron-right fa-sm"></i></span>
                        </p>
                        <div class="wisiva-sidebar-link-menu">
                            <a href="{{ route('admin.help.articles.index') }}"
                                class="wisiva-sidebar-link {{ request()->segment(2) == 'help' && request()->segment(3) != 'categories' ? 'current' : '' }}">
                                <p class="wisiva-sidebar-link-title">
                                    <span>{{ translate('Articles') }}</span>
                                </p>
                            </a>
                            <a href="{{ route('admin.help.categories.index') }}"
                                class="wisiva-sidebar-link {{ request()->segment(2) == 'help' && request()->segment(3) == 'categories' ? 'current' : '' }}">
                                <p class="wisiva-sidebar-link-title">
                                    <span>{{ translate('Categories') }}</span>
                                </p>
                            </a>
                        </div>
                    </div>
                @endif
                <div class="wisiva-sidebar-link {{ request()->segment(2) == 'navigation' ? 'active' : '' }}"
                    data-dropdown>
                    <p class="wisiva-sidebar-link-title">
                        <span><i class="fas fa-bars"></i>{{ translate('Navigation') }}</span>
                        <span class="arrow"><i class="fas fa-chevron-right fa-sm"></i></span>
                    </p>
                    <div class="wisiva-sidebar-link-menu">
                        <a href="{{ route('admin.navigation.navbar-links.index') }}"
                            class="wisiva-sidebar-link {{ request()->segment(3) == 'navbar-links' ? 'current' : '' }}">
                            <p class="wisiva-sidebar-link-title"><span>{{ translate('Header Menü') }}</span></p>
                        </a>
                        <a href="{{ route('admin.navigation.footer-links.index') }}"
                            class="wisiva-sidebar-link {{ request()->segment(3) == 'footer-links' ? 'current' : '' }}">
                            <p class="wisiva-sidebar-link-title"><span>{{ translate('Footer Menü') }}</span></p>
                        </a>
                    </div>
                </div>
                @if (@$settings->actions->blog)
                    <div class="wisiva-sidebar-link  {{ request()->segment(2) == 'blog' ? 'active' : '' }}"
                        data-dropdown>
                        <p class="wisiva-sidebar-link-title">
                            <span class="w-100"><i class="fas fa-rss"></i>{{ translate('Blog') }}</span>
                            @if ($sidebar_counters['blog_comments'])
                                <span class="counter me-2">{{ admcw($sidebar_counters['blog_comments']) }}</span>
                            @endif
                            <span class="arrow"><i class="fas fa-chevron-right fa-sm"></i></span>
                        </p>
                        <div class="wisiva-sidebar-link-menu">
                            <a href="{{ route('admin.blog.articles.index') }}"
                                class="wisiva-sidebar-link {{ request()->segment(3) == 'articles' ? 'current' : '' }}">
                                <p class="wisiva-sidebar-link-title"><span>{{ translate('Articles') }}</span></p>
                            </a>
                            <a href="{{ route('admin.blog.categories.index') }}"
                                class="wisiva-sidebar-link  {{ request()->segment(2) == 'blog' && request()->segment(3) == 'categories' ? 'current' : '' }}">
                                <p class="wisiva-sidebar-link-title"><span>{{ translate('Categories') }}</span>
                                </p>
                            </a>
                            <a href="{{ route('admin.blog.comments.index') }}"
                                class="wisiva-sidebar-link {{ request()->segment(3) == 'comments' ? 'current' : '' }}">
                                <p class="wisiva-sidebar-link-title">
                                    <span>{{ translate('Comments') }}</span>
                                    @if ($sidebar_counters['blog_comments'])
                                        <span class="counter">{{ admcw($sidebar_counters['blog_comments']) }}</span>
                                    @endif
                                </p>
                            </a>
                        </div>
                    </div>
                @endif
                <div class="wisiva-sidebar-link {{ request()->segment(2) == 'newsletter' ? 'active' : '' }}"
                    data-dropdown>
                    <p class="wisiva-sidebar-link-title">
                        <span><i class="fa-solid fa-envelope-open-text"></i>{{ translate('Newsletter') }}</span>
                        <span class="arrow"><i class="fas fa-chevron-right fa-sm"></i></span>
                    </p>
                    <div class="wisiva-sidebar-link-menu">
                        <a href="{{ route('admin.newsletter.settings') }}"
                            class="wisiva-sidebar-link {{ request()->segment(2) == 'newsletter' && request()->segment(3) == 'settings' ? 'current' : '' }}">
                            <p class="wisiva-sidebar-link-title"><span>{{ translate('Settings') }}</span></p>
                        </a>
                        <a href="{{ route('admin.newsletter.subscribers.index') }}"
                            class="wisiva-sidebar-link {{ request()->segment(3) == 'subscribers' ? 'current' : '' }}">
                            <p class="wisiva-sidebar-link-title"><span>{{ translate('Subscribers') }}</span></p>
                        </a>
                    </div>
                </div>
                <div class="wisiva-sidebar-link {{ request()->segment(2) == 'appearance' ? 'active' : '' }}"
                    data-dropdown>
                    <p class="wisiva-sidebar-link-title">
                        <span><i class="fa-solid fa-brush"></i>{{ translate('Appearance') }}</span>
                        <span class="arrow"><i class="fas fa-chevron-right fa-sm"></i></span>
                    </p>
                    <div class="wisiva-sidebar-link-menu">
                        <a href="{{ route('admin.appearance.themes.settings.index', 1) }}"
                            class="wisiva-sidebar-link {{ request()->segment(3) == 'themes' ? 'current' : '' }}">
                            <p class="wisiva-sidebar-link-title"><span>{{ translate('Themes') }}</span></p>
                        </a>
                        <a href="/adminsc/themedit"
                            class="wisiva-sidebar-link">
                            <p class="wisiva-sidebar-link-title"><span>{{ translate('Tema Düzenleyici') }}</span></p>
                        </a>
                    </div>
                </div>
                @if (isAddonActive('faker'))
                    <div class="wisiva-sidebar-link {{ request()->segment(2) == 'faker' ? 'active' : '' }}"
                        data-dropdown>
                        <p class="wisiva-sidebar-link-title">
                            <span><i class="fa-solid fa-wand-magic-sparkles"></i>{{ translate('Faker') }}</span>
                            {!! addonBadge('faker') !!}
                            <span class="arrow"><i class="fas fa-chevron-right fa-sm"></i></span>
                        </p>
                        <div class="wisiva-sidebar-link-menu">
                            <a href="{{ route('admin.faker.settings') }}"
                                class="wisiva-sidebar-link {{ request()->segment(2) == 'faker' && request()->segment(3) == 'settings' ? 'current' : '' }}">
                                <p class="wisiva-sidebar-link-title">
                                    <span>{{ translate('Settings') }}</span>
                                </p>
                            </a>
                            <a href="{{ route('admin.faker.tools.index') }}"
                                class="wisiva-sidebar-link {{ request()->segment(2) == 'faker' && request()->segment(3) == 'tools' ? 'current' : '' }}">
                                <p class="wisiva-sidebar-link-title">
                                    <span>{{ translate('Tools') }}</span>
                                </p>
                            </a>
                        </div>
                    </div>
                @endif
                <div class="wisiva-sidebar-link {{ request()->segment(2) == 'financial' ? 'active' : '' }}"
                    data-dropdown>
                    <p class="wisiva-sidebar-link-title">
                        <span><i class="fa-solid fa-landmark"></i>{{ translate('Financial') }}</span>
                        <span class="arrow"><i class="fas fa-chevron-right fa-sm"></i></span>
                    </p>
                    <div class="wisiva-sidebar-link-menu">
                        <a href="{{ route('admin.financial.settings') }}"
                            class="wisiva-sidebar-link {{ request()->segment(2) == 'financial' && request()->segment(3) == 'settings' ? 'current' : '' }}">
                            <p class="wisiva-sidebar-link-title">
                                <span>{{ translate('Settings') }}</span>
                            </p>
                        </a>
                        <a href="{{ route('admin.financial.taxes.index') }}"
                            class="wisiva-sidebar-link {{ request()->segment(3) == 'taxes' ? 'current' : '' }}">
                            <p class="wisiva-sidebar-link-title">
                                <span>{{ translate('Taxes') }}</span>
                            </p>
                        </a>
                        <a href="{{ route('admin.financial.payment-gateways.index') }}"
                            class="wisiva-sidebar-link {{ request()->segment(3) == 'payment-gateways' ? 'current' : '' }}">
                            <p class="wisiva-sidebar-link-title">
                                <span>{{ translate('Payment Gateways') }}</span>
                            </p>
                        </a>
                    </div>
                </div>
                <div class="wisiva-sidebar-link {{ request()->segment(2) == 'settings' ? 'active' : '' }}"
                    data-dropdown>
                    <p class="wisiva-sidebar-link-title">
                        <span><i class="fa fa-cog"></i>{{ translate('Settings') }}</span>
                        <span class="arrow"><i class="fas fa-chevron-right fa-sm"></i></span>
                    </p>
                    <div class="wisiva-sidebar-link-menu">
                        <a href="{{ route('admin.settings.general') }}"
                            class="wisiva-sidebar-link {{ request()->segment(3) == 'general' ? 'current' : '' }}">
                            <p class="wisiva-sidebar-link-title">
                                <span>{{ translate('General') }}</span>
                            </p>
                        </a>
                        <a href="{{ route('admin.settings.item.index') }}"
                            class="wisiva-sidebar-link {{ request()->segment(3) == 'item' ? 'current' : '' }}">
                            <p class="wisiva-sidebar-link-title">
                                <span>{{ translate('Item Settings') }}</span>
                            </p>
                        </a>
                        @if (isAddonActive('watermark'))
                            <a href="{{ route('admin.settings.watermark') }}"
                                class="wisiva-sidebar-link {{ request()->segment(3) == 'watermark' ? 'current' : '' }}">
                                <p class="wisiva-sidebar-link-title">
                                    <span>{{ translate('Watermark') }}</span>
                                    {!! addonBadge('watermark') !!}
                                </p>
                            </a>
                        @endif
                        @if (isAddonActive('newsletter'))
                            <a href="{{ route('admin.settings.newsletter') }}"
                                class="wisiva-sidebar-link {{ request()->segment(3) == 'newsletter' ? 'current' : '' }}">
                                <p class="wisiva-sidebar-link-title">
                                    <span>{{ translate('Newsletter') }}</span>
                                    {!! addonBadge('newsletter') !!}
                                </p>
                            </a>
                        @endif
                        <a href="{{ route('admin.settings.ticket') }}"
                            class="wisiva-sidebar-link {{ request()->segment(3) == 'ticket' ? 'current' : '' }}">
                            <p class="wisiva-sidebar-link-title">
                                <span>{{ translate('Ticket Settings') }}</span>
                            </p>
                        </a>
                        <a href="{{ route('admin.settings.support-periods.index') }}"
                            class="wisiva-sidebar-link {{ request()->segment(3) == 'support-periods' ? 'current' : '' }}">
                            <p class="wisiva-sidebar-link-title">
                                <span>{{ translate('Support Periods') }}</span>
                            </p>
                        </a>
                        <a href="{{ route('admin.settings.oauth-providers.index') }}"
                            class="wisiva-sidebar-link {{ request()->segment(3) == 'oauth-providers' ? 'current' : '' }}">
                            <p class="wisiva-sidebar-link-title">
                                <span>{{ translate('OAuth Providers') }}</span>
                            </p>
                        </a>
                        <a href="{{ route('admin.settings.captcha-providers.index') }}"
                            class="wisiva-sidebar-link {{ request()->segment(3) == 'captcha-providers' ? 'current' : '' }}">
                            <p class="wisiva-sidebar-link-title">
                                <span>{{ translate('Captcha Providers') }}</span>
                            </p>
                        </a>
                        <a href="{{ route('admin.settings.smtp.index') }}"
                            class="wisiva-sidebar-link {{ request()->segment(3) == 'smtp' ? 'current' : '' }}">
                            <p class="wisiva-sidebar-link-title"><span>{{ translate('SMTP Settings') }}</span>
                            </p>
                        </a>
                        <a href="{{ route('admin.settings.pages.index') }}"
                            class="wisiva-sidebar-link {{ request()->segment(3) == 'pages' ? 'current' : '' }}">
                            <p class="wisiva-sidebar-link-title"><span>{{ translate('Manage Pages') }}</span></p>
                        </a>
                        <a href="{{ route('admin.settings.extensions.index') }}"
                            class="wisiva-sidebar-link {{ request()->segment(3) == 'extensions' ? 'current' : '' }}">
                            <p class="wisiva-sidebar-link-title"><span>{{ translate('Extensions') }}</span></p>
                        </a>
                        <a href="{{ route('admin.settings.language.index') }}"
                            class="wisiva-sidebar-link {{ request()->segment(3) == 'language' ? 'current' : '' }}">
                            <p class="wisiva-sidebar-link-title"><span>{{ translate('Language') }}</span></p>
                        </a>
                        <a href="{{ route('admin.settings.mail-templates.index') }}"
                            class="wisiva-sidebar-link {{ request()->segment(3) == 'mail-templates' ? 'current' : '' }}">
                            <p class="wisiva-sidebar-link-title">
                                <span>{{ translate('Mail Templates') }}</span>
                            </p>
                        </a>
                    </div>
                </div>
            </div>
            <div class="wisiva-sidebar-links-cont">
                <div class="wisiva-sidebar-link {{ request()->segment(2) == 'sections' ? 'active' : '' }}"
                    data-dropdown>
                    <p class="wisiva-sidebar-link-title">
                        <span><i class="fas fa-layer-group"></i>{{ translate('Sections') }}</span>
                        <span class="arrow"><i class="fas fa-chevron-right fa-sm"></i></span>
                    </p>
                    <div class="wisiva-sidebar-link-menu">
                        <a href="{{ route('admin.sections.announcement.index') }}"
                            class="wisiva-sidebar-link {{ request()->segment(3) == 'announcement' ? 'current' : '' }}">
                            <p class="wisiva-sidebar-link-title">
                                <span>{{ translate('Announcement') }}</span>
                            </p>
                        </a>
                        <a href="{{ route('admin.sections.home-sections.index') }}"
                            class="wisiva-sidebar-link {{ request()->segment(3) == 'home-sections' ? 'current' : '' }}">
                            <p class="wisiva-sidebar-link-title">
                                <span>{{ translate('Home Sections') }}</span>
                            </p>
                        </a>
                        <a href="{{ route('admin.sections.home-categories.index') }}"
                            class="wisiva-sidebar-link {{ request()->segment(3) == 'home-categories' ? 'current' : '' }}">
                            <p class="wisiva-sidebar-link-title">
                                <span>{{ translate('Home Categories') }}</span>
                            </p>
                        </a>
                        <a href="{{ route('admin.sections.faqs.index') }}"
                            class="wisiva-sidebar-link {{ request()->segment(3) == 'faqs' ? 'current' : '' }}">
                            <p class="wisiva-sidebar-link-title">
                                <span>{{ translate('Manage FAQs') }}</span>
                            </p>
                        </a>
                        <a href="{{ route('admin.sections.testimonials.index') }}"
                            class="wisiva-sidebar-link {{ request()->segment(3) == 'testimonials' ? 'current' : '' }}">
                            <p class="wisiva-sidebar-link-title">
                                <span>{{ translate('Testimonials') }}</span>
                            </p>
                        </a>
                    </div>
                </div>
                <div class="wisiva-sidebar-link {{ request()->segment(2) == 'system' ? 'active' : '' }}"
                    data-dropdown>
                    <p class="wisiva-sidebar-link-title">
                        <span><i class="fa-solid fa-server"></i>{{ translate('System') }}</span>
                        <span class="arrow"><i class="fas fa-chevron-right fa-sm"></i></span>
                    </p>
                    <div class="wisiva-sidebar-link-menu">
                        <a href="{{ route('admin.system.info.index') }}"
                            class="wisiva-sidebar-link {{ request()->segment(3) == 'info' ? 'current' : '' }}">
                            <p class="wisiva-sidebar-link-title"><span>{{ translate('Information') }}</span>
                            </p>
                        </a>
                        <a href="{{ route('admin.system.maintenance') }}"
                            class="wisiva-sidebar-link {{ request()->segment(3) == 'maintenance' ? 'current' : '' }}">
                            <p class="wisiva-sidebar-link-title">
                                <span>{{ translate('Maintenance') }}</span>
                            </p>
                        </a>
                        <a href="{{ route('admin.system.admin-panel-style') }}"
                            class="wisiva-sidebar-link {{ request()->segment(3) == 'admin-panel-style' ? 'current' : '' }}">
                            <p class="wisiva-sidebar-link-title">
                                <span>{{ translate('Admin Style') }}</span>
                            </p>
                        </a>
                        <a href="{{ route('admin.system.cronjob.index') }}"
                            class="wisiva-sidebar-link {{ request()->segment(3) == 'cronjob' ? 'current' : '' }}">
                            <p class="wisiva-sidebar-link-title">
                                <span>{{ translate('Cron Job') }}</span>
                            </p>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</aside>
