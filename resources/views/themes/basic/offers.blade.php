@extends('themes.basic.layouts.single')
@section('header_title', $offer->title)
@section('title', $offer->title)
@section('page_description', $offer->description)
@section('body_bg', 'bg-white')
@section('breadcrumbs', Breadcrumbs::render('offers', $offer))
@section('breadcrumbs_schema', Breadcrumbs::view('breadcrumbs::json-ld', 'offers', $offer))
@section('header_v2', true)
@section('container', 'container-custom')
@section('content')
<section id="offer-details" class="container container-custom">
    <div class="row">
        <div class="col-lg-6">
            <div class="section-header">
                <h2 class="section-title">{{ $offer->title }}</h2>
                <p class="section-text mt-3">{!! nl2br(html_entity_decode($offer->description)) !!}</p>
            </div>
        </div>
        <div class="col-lg-6" style="border-left: 1px solid #f3f3f3;">
            @if(!empty($offer->form_fields) && is_array(json_decode($offer->form_fields, true)) && count(json_decode($offer->form_fields, true)) > 0)
                <form action="{{ route('submit.offer', $offer->seo_url) }}" method="POST">
                    @csrf
                    @foreach(json_decode($offer->form_fields, true) as $field)
                        <div class="mb-3">
                            <label class="form-label">{{ $field['label'] }} <span class="text-danger fs-5">*</span></label>
                            @if($field['type'] == 'text' || $field['type'] == 'email')
                                <input type="{{ $field['type'] }}" name="{{ $field['name'] }}" class="form-control" placeholder="{{ $field['label'] }}" required>
                            @elseif($field['type'] == 'textarea')
                                <textarea name="{{ $field['name'] }}" class="form-control" rows="3" placeholder="{{ $field['label'] }}" required></textarea>
                            @elseif($field['type'] == 'checkbox')
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" name="{{ $field['name'] }}" value="1" required>
                                    <label class="form-check-label">{{ $field['label'] }}</label>
                                </div>
                            @endif 
                        </div>
                    @endforeach
                    <button type="submit" class="btn btn-primary">{{ translate('Submit') }}</button>
                </form>
            @endif
        </div>
    </div>
</section>
@endsection
