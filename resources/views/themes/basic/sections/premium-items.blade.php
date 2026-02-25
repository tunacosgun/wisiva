<section id="services" class="container container-custom">
    <div class="section-header text-center">
        <div class="col-lg-7 mx-auto">

            <h2 class="section-title">{{ $premiumItemsSection->name }} </h2>
            <p class="section-text mt-3">
                {{ $premiumItemsSection->description }}
            </p>
        </div>
    </div>
    <div class="service-grid">
        @foreach ($premiumItemsSection->json as $item)
            <div class="service-item">
                <i class="{{ $item['icon'] }}"></i>
                <h3>{{ $item['title'] }}</h3>
                <p>{{ $item['description'] }}</p>
            </div>
        @endforeach
    </div>
</section>
@php
    $packages = \App\Models\Packages::getHomeActivePackages();
@endphp
@if($packages->isNotEmpty())
<section id="ecommerce-price" >
    <div class="price-container">
        @foreach($packages as $package)
        <div class="section-header text-center">
            <h2 class="section-title">{{ $package->name }}</h2>
            <p class="section-text col-lg-6 mx-auto">
                {{ $package->description }}
            </p>
        </div>
        <div class="price-cards mb-5" >
            @foreach(json_decode(html_entity_decode($package->products), false)->packages as $product)
            <div class="price-card">
                <h3>{{ $product->name }}</h3>
                <p class="original-price">{{ $product->old_price }}</p>
                <p class="discounted-price">{{ $product->new_price }} <span>{{ $product->discount }}</span></p>
                <p class="installment">{{ $product->installment }}</p>
                <ul>
                    @foreach($product->features as $feature)
                        <li><i class="fas fa-check-circle"></i> {{ $feature }}</li>
                    @endforeach
                </ul>
                <a href="{{ $package->button1_url }}" class="btn call-button text-white w-100">{{ $package->button1_name }}</a>
                <a href="{{ $package->button2_url }}" class="btn details-button w-100">{{ $package->button2_name }}</a>
            </div>
            @endforeach
        </div>
        @endforeach
    </div>
</section>
@endif

