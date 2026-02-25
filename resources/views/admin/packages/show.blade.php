@extends('admin.layouts.grid')
@section('title', $package->id ? translate('Edit Package') : translate('Create Package'))
@section('back', route('admin.packages.index'))
@section('content')
<div class="mb-3">
    <a class="btn btn-outline-secondary" href="/paket/{{ $package->seo_url }}" target="_blank"><i class="fa fa-eye me-2"></i>{{ translate('Preview') }}</a>
</div>
<div class="row">
    <div class="col-12">
        <form action="{{ $package->id ? route('admin.packages.update', $package->id) : route('admin.packages.store') }}" method="POST">
            @csrf
            @if($package->id)
            @method('PUT')
            @endif
            <div class="card shadow-sm">
                <div class="card-body p-4">
                    <div class="row g-4">
                        <div class="col-12">
                            <div class="mb-3">
                                <label class="form-label">{{ translate('Package Name') }}</label>
                                <input type="text" name="name" id="packageName" class="form-control" value="{{ $package->name }}" required>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="mb-3">
                                <label class="form-label">{{ translate('Package Description (HTML)') }}</label>
                                <textarea name="description" class="form-control" rows="5">{{ $package->description }}</textarea>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="mb-3">
                                <label class="form-label">{{ translate('Package Products') }}</label>
                                <div id="packageProducts" class="border rounded p-3">
                                    <div class="row mb-3">
                                        <div class="col-12 text-end">
                                            <button type="button" id="addPackage" class="btn btn-sm btn-primary">
                                                <i class="fa fa-plus me-1"></i>{{ translate('Add Package') }}
                                            </button>
                                        </div>
                                    </div>
                                    <div id="packagesList">
                                        <!-- Package items will be added here dynamically -->
                                    </div>
                                </div>
                                <input type="hidden" name="products" id="productsJson" value="{{ $package->products ?? '{"packages":[]}' }}" required>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label class="form-label">{{ translate('SEO URL') }}</label>
                                <div class="input-group">
                                    <input type="text" name="seo_url" id="seoUrl" class="form-control" value="{{ $package->seo_url }}" required>
                                    <button type="button" id="generateSlug" class="btn btn-outline-secondary">{{ translate('Generate') }}</button>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label class="form-label">{{ translate('SEO Title') }}</label>
                                <input type="text" name="seo_title" class="form-control" value="{{ $package->seo_title }}">
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="mb-3">
                                <label class="form-label">{{ translate('SEO Description') }}</label>
                                <textarea name="seo_description" class="form-control" rows="3">{{ $package->seo_description }}</textarea>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label class="form-label">{{ translate('Button 1 Name') }}</label>
                                <input type="text" name="button1_name" class="form-control" value="{{ $package->button1_name }}">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label class="form-label">{{ translate('Button 1 URL') }}</label>
                                <input type="text" name="button1_url" class="form-control" value="{{ $package->button1_url }}">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label class="form-label">{{ translate('Button 2 Name') }}</label>
                                <input type="text" name="button2_name" class="form-control" value="{{ $package->button2_name }}">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label class="form-label">{{ translate('Button 2 URL') }}</label>
                                <input type="text" name="button2_url" class="form-control" value="{{ $package->button2_url }}">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label class="form-label">{{ translate('Status') }}</label>
                                <select name="status" class="form-select">
                                     <option value="1" {{ $package->status ? 'selected' : '' }}>{{ translate('Active') }}</option>
                                    <option value="0" {{ !$package->status && $package->id ? 'selected' : '' }}>{{ translate('Inactive') }}</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label class="form-label">{{ translate('Home') }}{{ translate('da') }} {{ translate('Show') }}</label>
                                <div class="form-check">
                                    <input type="checkbox" name="show_on_homepage" id="showOnHomepage" class="form-check-input" value="1" {{ $package->home ? 'checked' : '' }}>
                                    <label class="form-check-label" for="showOnHomepage">{{ translate('Yes') }}</label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-footer">
                    <div class="row">
                        <div class="col-12 text-end">
                            <button type="submit" class="btn btn-primary">
                                {{ $package->id ? translate('Update Package') : translate('Create Package') }}
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>

<!-- Package Item Template -->
<template id="packageItemTemplate">
    <div class="package-item mb-4 border rounded p-3 position-relative">
        <button type="button" class="btn btn-sm btn-danger position-absolute top-0 end-0 m-2 remove-package">
            <i class="fa fa-times"></i>
        </button>
        <div class="row g-3">
            <div class="col-md-6">
                <div class="mb-3">
                    <label class="form-label">{{ translate('Package Name') }}</label>
                    <input type="text" class="form-control package-name" placeholder="Bronz, Gümüş, Elmas, vb.">
                </div>
            </div>
            <div class="col-md-6">
                <div class="mb-3">
                    <label class="form-label">{{ translate('Old Price') }}</label>
                    <input type="text" class="form-control package-old-price" placeholder="40.000 TL">
                </div>
            </div>
            <div class="col-md-6">
                <div class="mb-3">
                    <label class="form-label">{{ translate('New Price') }}</label>
                    <input type="text" class="form-control package-new-price" placeholder="25.000 TL">
                </div>
            </div>
            <div class="col-md-6">
                <div class="mb-3">
                    <label class="form-label">{{ translate('Discount') }}</label>
                    <input type="text" class="form-control package-discount" placeholder="%38">
                </div>
            </div>
            <div class="col-12">
                <div class="mb-3">
                    <label class="form-label">{{ translate('Installment') }}</label>
                    <input type="text" class="form-control package-installment" placeholder="2.083 TL x 12 Taksit">
                </div>
            </div>
            <div class="col-12">
                <div class="mb-3">
                    <label class="form-label">{{ translate('Features') }}</label>
                    <div class="features-container">
                        <div class="input-group mb-2 feature-input-group">
                            <input type="text" class="form-control feature-input" placeholder="{{ translate('Feature') }}">
                            <button type="button" class="btn btn-outline-danger remove-feature">
                                <i class="fa fa-times"></i>
                            </button>
                        </div>
                    </div>
                    <button type="button" class="btn btn-sm btn-outline-primary mt-2 add-feature">
                        <i class="fa fa-plus me-1"></i>{{ translate('Add Feature') }}
                    </button>
                </div>
            </div>
        </div>
    </div>
</template>

<!-- Feature Input Template -->
<template id="featureInputTemplate">
    <div class="input-group mb-2 feature-input-group">
        <input type="text" class="form-control feature-input" placeholder="{{ translate('Feature') }}">
        <button type="button" class="btn btn-outline-danger remove-feature">
            <i class="fa fa-times"></i>
        </button>
    </div>
</template>

@push('scripts')
<script>
    "use strict";

    $(document).ready(function() {
        // Initialize packages from JSON
        const productsJsonInput = $('#productsJson');
        let productsData = {
            packages: []
        };

        try {
            productsData = JSON.parse(productsJsonInput.val());
        } catch (e) {
            console.error('Invalid JSON in products field');
            productsData = {
                packages: []
            };
        }

        // Generate SEO URL from package name
        $('#generateSlug').on('click', function() {
            const packageName = $('#packageName').val();
            if (packageName) {
                $.ajax({
                    url: "{{ route('admin.packages.generate-slug') }}",
                    type: "POST",
                    data: {
                        name: packageName,
                        _token: "{{ csrf_token() }}"
                    },
                    success: function(response) {
                        $('#seoUrl').val(response.slug);
                    }
                });
            }
        });

        // Add new package
        $('#addPackage').on('click', function() {
            addPackageItem();
        });

        // Remove package
        $(document).on('click', '.remove-package', function() {
            $(this).closest('.package-item').remove();
            updateProductsJson();
        });

        // Add feature
        $(document).on('click', '.add-feature', function() {
            const featuresContainer = $(this).prev('.features-container');
            const template = document.getElementById('featureInputTemplate');
            const clone = document.importNode(template.content, true);
            featuresContainer.append(clone);
        });

        // Remove feature
        $(document).on('click', '.remove-feature', function() {
            $(this).closest('.feature-input-group').remove();
            updateProductsJson();
        });

        // Update JSON when inputs change
        $(document).on('change', '.package-name, .package-old-price, .package-new-price, .package-discount, .package-installment, .feature-input', function() {
            updateProductsJson();
        });

        // Function to add a package item
        function addPackageItem(packageData = null) {
            const template = document.getElementById('packageItemTemplate');
            const clone = document.importNode(template.content, true);
            const packageItem = $(clone).find('.package-item');

            if (packageData) {
                packageItem.find('.package-name').val(packageData.name || '');
                packageItem.find('.package-old-price').val(packageData.old_price || '');
                packageItem.find('.package-new-price').val(packageData.new_price || '');
                packageItem.find('.package-discount').val(packageData.discount || '');
                packageItem.find('.package-installment').val(packageData.installment || '');

                // Add features
                const featuresContainer = packageItem.find('.features-container');
                featuresContainer.empty();

                if (packageData.features && packageData.features.length > 0) {
                    packageData.features.forEach(feature => {
                        const featureTemplate = document.getElementById('featureInputTemplate');
                        const featureClone = document.importNode(featureTemplate.content, true);
                        $(featureClone).find('.feature-input').val(feature);
                        featuresContainer.append(featureClone);
                    });
                } else {
                    // Add one empty feature input if none exist
                    const featureTemplate = document.getElementById('featureInputTemplate');
                    const featureClone = document.importNode(featureTemplate.content, true);
                    featuresContainer.append(featureClone);
                }
            }

            $('#packagesList').append(packageItem);
            updateProductsJson();
        }

        // Function to update the products JSON
        function updateProductsJson() {
            const packages = [];

            $('.package-item').each(function() {
                const packageItem = $(this);
                const features = [];

                packageItem.find('.feature-input').each(function() {
                    const featureValue = $(this).val().trim();
                    if (featureValue) {
                        features.push(featureValue);
                    }
                });

                packages.push({
                    name: packageItem.find('.package-name').val(),
                    old_price: packageItem.find('.package-old-price').val(),
                    new_price: packageItem.find('.package-new-price').val(),
                    discount: packageItem.find('.package-discount').val(),
                    installment: packageItem.find('.package-installment').val(),
                    features: features
                });
            });

            productsData.packages = packages;
            productsJsonInput.val(JSON.stringify(productsData));
        }

        // Initialize existing packages
        if (productsData.packages && productsData.packages.length > 0) {
            productsData.packages.forEach(packageData => {
                addPackageItem(packageData);
            });
        } else {
            // Add one empty package if none exist
            addPackageItem();
        }
    });
</script>
@endpush
@endsection