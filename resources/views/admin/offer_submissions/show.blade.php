@extends('admin.layouts.grid')
@section('title', translate('Form Submission Details'))
@section('back', route('admin.offer_submissions.index'))
@section('content')
    <div class="row g-3 mb-4">
        <div class="col-12">
            <div class="card">
                <div class="card-body p-4">
                    <h4>{{ translate('Form Slug') }}: {{ $submission->offer_slug }}</h4>
                    <h5>{{ translate('Submission Date') }}: {{ dateFormat($submission->created_at) }}</h5>
                    <hr>
                    <div class="row">
                        @foreach(json_decode($submission->form_data, true) as $key => $value) 
                            <div class="col-md-6 mb-3">
                                <label class="form-label">{{ ucfirst(str_replace('_', ' ', $key)) }}</label>
                                <p>{{ $value }}</p>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
