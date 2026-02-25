@extends('themes.basic.layouts.single')
@section('noindex', true)
@section('section', translate('Ödeme'))
@section('header_title', translate('Ödemeyi tamamlayın'))
@section('title', translate('Ödemeyi tamamlayın'))
@section('body_bg', 'bg-white')
@section('breadcrumbs', Breadcrumbs::render('checkout', $trx))
@section('header_v3', true)
@section('content')
<div class="container py-4">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card shadow-sm border-0">
            <div class="card-header bg-primary text-white">
                <h5 class="mb-0 text-center">{{ translate('Paytr Ödeme') }}</h5>
            </div>
            <div class="card-body p-4">
                <div class="paytr-iframe-container text-center">
                <iframe src="{{ $data->iframe_url }}" id="paytriframe" frameborder="0" scrolling="no" style="width: 100%; height: 600px; border-radius: 8px;"></iframe>
                </div>
            </div>
            </div>
        </div>
    </div>
</div>
@endsection

@push('scripts')
<script src="https://www.paytr.com/js/iframeResizer.min.js"></script> 
 
<script>
    iFrameResize({}, '#paytriframe');
</script>
@endpush