@extends('admin.layouts.grid')
@section('title', translate('Form Submissions'))
@section('container', 'container-max-xxl')
@section('content')
    <div class="row g-3 mb-4">
        <div class="col-12">
            <div class="card">
                <div class="card-header p-3 border-bottom-small">
                    <form action="{{ url()->current() }}" method="GET">
                        <div class="row g-3">
                            <div class="col-12 col-lg-6">
                                <input type="text" name="search" class="form-control" placeholder="{{ translate('Search...') }}"
                                    value="{{ request('search') ?? '' }}">
                            </div>
                            <div class="col-12 col-lg-2">
                                <input type="text" name="date_from" class="form-control text-secondary"
                                    placeholder="{{ translate('From Date') }}" onfocus="(this.type='date')"
                                    onblur="(this.type='text')" value="{{ request('date_from') }}">
                            </div>
                            <div class="col-12 col-lg-2">
                                <input type="text" name="date_to" class="form-control text-secondary"
                                    placeholder="{{ translate('To Date') }}" onfocus="(this.type='date')"
                                    onblur="(this.type='text')" value="{{ request('date_to') }}">
                            </div>
                            <div class="col">
                                <button class="btn btn-primary w-100"><i class="fa fa-search"></i></button>
                            </div>
                            <div class="col">
                                <a href="{{ url()->current() }}" class="btn btn-secondary w-100">{{ translate('Reset') }}</a>
                            </div>
                        </div>
                    </form>
                </div>
                <div>
                    @if ($submissions->count() > 0)
                        <div class="overflow-hidden">
                            <div class="table-custom-container">
                                <table class="table-custom table">
                                    <thead>
                                        <tr class="bg-light">
                                            <th>{{ translate('ID') }}</th>
                                            <th>{{ translate('Form Slug') }}</th>
                                            <th>{{ translate('Submission Date') }}</th>
                                            <th></th> 
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($submissions as $submission)
                                            <tr>
                                                <td>
                                                    <a href="{{ route('admin.offer_submissions.show', $submission->id) }}"><i
                                                            class="fa-solid fa-hashtag me-1"></i>{{ $submission->id }}</a>
                                                </td>
                                                <td>
                                                    <span class="text-muted">{{ $submission->offer_slug }}</span>
                                                </td>
                                                <td class="text-center">{{ dateFormat($submission->created_at) }}</td>
                                                <td>
                                                    {{ collect(json_decode($submission->form_data, true))->first() ?? '' }}    {{ collect(json_decode($submission->form_data, true))->skip(1)->first() ?? '' }}
                                                </td> 
                                                <td>
                                                    <div class="text-end">
                                                        <a href="{{ route('admin.offer_submissions.show', $submission->id) }}" class="btn btn-sm btn-primary">
                                                            <i class="fa fa-eye me-1"></i>{{ translate('View') }}
                                                        </a>
                                                    </div>
                                                </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="px-4 py-3">
                            {{ $submissions->links() }}
                        </div>
                    @else
                        @include('admin.partials.empty', ['empty_classes' => 'empty-lg'])
                    @endif
                </div>
            </div>
        </div>
    </div>
@endsection
