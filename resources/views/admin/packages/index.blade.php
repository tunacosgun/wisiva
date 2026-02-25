@extends('admin.layouts.grid')
@section('title', translate('Paketler'))
@section('container', 'container-max-xxl')
@section('content')
    <div class="row g-3 mb-4">
        <div class="col-12">
            <div class="card">
                <div class="card-header p-3 border-bottom-small">sdfsd
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
                    @if ($packages->count() > 0)
                        <div class="overflow-hidden">
                            <div class="table-custom-container">
                                <table class="table-custom table">
                                    <thead>
                                        <tr class="bg-light">
                                            <th>{{ translate('ID') }}</th>
                                            <th>{{ translate('Name') }}</th>
                                            <th>{{ translate('SEO URL') }}</th>
                                            <th class="text-center">{{ translate('Status') }}</th>
                                            <th class="text-center">{{ translate('Date') }}</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($packages as $package)
                                            <tr>
                                                <td>
                                                    <a href="{{ route('admin.packages.show', $package->id) }}"><i
                                                            class="fa-solid fa-hashtag me-1"></i>{{ $package->id }}</a>
                                                </td>
                                                <td>
                                                    <a href="{{ route('admin.packages.show', $package->id) }}"
                                                        class="text-dark">
                                                        {{ shorterText($package->name, 40) }}
                                                    </a>
                                                </td>
                                                <td>
                                                    <span class="text-muted">{{ $package->seo_url }}</span>
                                                </td>
                                                <td class="text-center">
                                                    @if ($package->status)
                                                        <div class="badge bg-green rounded-2 fw-light px-3 py-2">
                                                            {{ translate('Active') }}
                                                        </div>
                                                    @else
                                                        <div class="badge bg-red rounded-2 fw-light px-3 py-2">
                                                            {{ translate('Inactive') }}
                                                        </div>
                                                    @endif
                                                </td>
                                                <td class="text-center">{{ dateFormat($package->created_at) }}</td>
                                                <td>
                                                    <div class="text-end">
                                                        <button type="button" class="btn btn-sm rounded-3"
                                                            data-bs-toggle="dropdown" aria-expanded="true">
                                                            <i class="fa fa-ellipsis-v fa-sm text-muted"></i>
                                                        </button>
                                                        <ul class="dropdown-menu dropdown-menu-sm-end"
                                                            data-popper-placement="bottom-end">
                                                            <li>
                                                                <a class="dropdown-item"
                                                                    href="{{ route('admin.packages.show', $package->id) }}">
                                                                    <i class="fa-solid fa-edit me-1"></i>
                                                                    {{ translate('Edit') }}
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <hr class="dropdown-divider" />
                                                            </li>
                                                            <li>
                                                                <form action="{{ route('admin.packages.destroy', $package->id) }}"
                                                                    method="POST">
                                                                    @csrf @method('DELETE')
                                                                    <button class="action-confirm dropdown-item text-danger">
                                                                        <i class="far fa-trash-alt me-1"></i>
                                                                        {{ translate('Delete') }}
                                                                    </button>
                                                                </form>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="px-4 py-3">
                            {{ $packages->links() }}
                        </div>
                    @else
                        @include('admin.partials.empty', ['empty_classes' => 'empty-lg'])
                    @endif
                </div>
            </div>
        </div>
        <div class="col-12 text-end">
            <a href="{{ route('admin.packages.create') }}" class="btn btn-primary">
                <i class="fa fa-plus me-2"></i>{{ translate('Add New Package') }}
            </a>
        </div>
    </div>
@endsection