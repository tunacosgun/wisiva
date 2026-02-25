@extends('themes.basic.layouts.single')
@section('header_title', $package->name)
@section('title', $package->name)
@section('page_description', $package->description)
@section('body_bg', 'bg-white')
@section('breadcrumbs', Breadcrumbs::render('packages', $package))
@section('breadcrumbs_schema', Breadcrumbs::view('breadcrumbs::json-ld', 'packages', $package))
@section('header_v2', true)
@section('container', 'container-custom')
@section('content')
     <section id="package-details" class="container container-custom">
        <div class="section-header text-center">
            <div class="col-lg-7 mx-auto">
                <h2 class="section-title">{{ $package->name }}</h2>
                <p class="section-text mt-3">{{ $package->description }}</p>
            </div>
        </div>
        <div class="price-cards"> 
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
    </section>
@endsection