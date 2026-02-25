@extends('themes.default.layouts.app')

@section('title', translate('Checkout'))

@section('content')
<div class="container py-4">
    <div class="row justify-content-center">
        <div class="col-md-10">
            <div class="card">
                <div class="card-header">
                    <h5 class="mb-0">{{ translate('PayTR Payment') }}</h5>
                </div>
                <div class="card-body">
                    <div class="text-center mb-4">
                        <h6>{{ translate('Please do not refresh the page during payment.') }}</h6>
                    </div>
                    
                    <div class="paytr-iframe-container">
                        <iframe src="{{ $data['iframe_url'] }}" id="paytriframe" frameborder="0" scrolling="no" style="width: 100%; height: 600px;"></iframe>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@push('scripts')
<script>
    iFrameResize({}, '#paytriframe');
</script>
@endpush