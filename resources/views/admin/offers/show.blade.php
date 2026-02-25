@extends('admin.layouts.grid')
@section('title', $offer->id ? translate('Edit Form') : translate('Create Form'))
@section('back', route('admin.offers.index'))
@section('content')
<div class="mb-3">
    <a class="btn btn-outline-secondary" href="/form/{{ $offer->seo_url }}" target="_blank"><i class="fa fa-eye me-2"></i>{{ translate('Preview') }}</a>
</div>
<div class="row">
    <div class="col-12">
        <form action="{{ $offer->id ? route('admin.offers.update', $offer->id) : route('admin.offers.store') }}" method="POST">
            @csrf
            @if($offer->id)
            @method('PUT')
            @endif
            <div class="card shadow-sm">
                <div class="card-body p-4">
                    <div class="row g-4">
                        <div class="col-12">
                            <div class="mb-3">
                                <label class="form-label">{{ translate('Form Title') }}</label>
                                <input type="text" name="title" id="offerTitle" class="form-control" value="{{ $offer->title }}" required>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="mb-3">
                                <label class="form-label">{{ translate('Form Description (HTML)') }}</label>
                                <textarea name="description" class="form-control" rows="5">{{ $offer->description }}</textarea>
                            </div>
                        </div> 
                        <div class="row mt-5">
                            <div class="col-12">
                                <h4>{{ translate('Dynamic Form Fields') }}</h4>
                                <div id="dynamicFormFields" class="border rounded p-3">
                                    <div class="row mb-3">
                                        <div class="col-12 text-end">
                                            <button type="button" id="addFormField" class="btn btn-sm btn-primary">
                                                <i class="fa fa-plus me-1"></i>{{ translate('Add Field') }}
                                            </button>
                                        </div>
                                    </div>
                                    <div id="formFieldsList">
                                        <!-- Form fields will be added here dynamically -->
                                    </div>
                                </div>
                                <input type="hidden" name="form_fields" id="formFieldsJson" value="{{ $offer->form_fields ?? '[]' }}" required>
                            </div>
                        </div>
                        <hr>
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label class="form-label">{{ translate('SEO URL') }}</label>
                                <div class="input-group">
                                    <input type="text" name="seo_url" id="seoUrl" class="form-control" value="{{ $offer->seo_url }}" required>
                                    <button type="button" id="generateSlug" class="btn btn-outline-secondary">{{ translate('Generate') }}</button>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label class="form-label">{{ translate('SEO Title') }}</label>
                                <input type="text" name="seo_title" class="form-control" value="{{ $offer->seo_title }}">
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="mb-3">
                                <label class="form-label">{{ translate('SEO Description') }}</label>
                                <textarea name="seo_description" class="form-control" rows="3">{{ $offer->seo_description }}</textarea>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label class="form-label">{{ translate('Status') }}</label>
                                <select name="status" class="form-select">
                                    <option value="1" {{ $offer->status ? 'selected' : '' }}>{{ translate('Active') }}</option>
                                    <option value="0" {{ !$offer->status && $offer->id ? 'selected' : '' }}>{{ translate('Inactive') }}</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-footer">
                    <div class="row">
                        <div class="col-12 text-end">
                            <button type="submit" class="btn btn-primary">
                                {{ $offer->id ? translate('Update Form') : translate('Create Form') }}
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>


<!-- Form Field Template -->
<template id="formFieldTemplate">
    <div class="form-field-item mb-4 border rounded p-3 position-relative">
        <button type="button" class="btn btn-sm btn-danger position-absolute top-0 end-0 m-2 remove-form-field">
            <i class="fa fa-times"></i>
        </button>
        <div class="row g-3">
            <div class="col-md-4">
                <div class="mb-3">
                    <label class="form-label">{{ translate('Field Label') }}</label>
                    <input type="text" class="form-control field-label" placeholder="Ad, Soyad, Telefon, vb.">
                </div>
            </div>
            <div class="col-md-4">
                <div class="mb-3">
                    <label class="form-label">{{ translate('Field Type') }}</label>
                    <select class="form-select field-type">
                        <option value="text">{{ translate('Text') }}</option>
                        <option value="email">{{ translate('Email') }}</option>
                        <option value="textarea">{{ translate('Textarea') }}</option>
                        <option value="checkbox">{{ translate('Checkbox') }}</option>
                    </select>
                </div>
            </div>
            <div class="col-md-4">
                <div class="mb-3">
                    <label class="form-label">{{ translate('Field Name') }}</label>
                    <input type="text" class="form-control field-name" placeholder="field_name">
                </div>
            </div>
        </div>
    </div>
</template>

@push('scripts')
<script>
    "use strict";

    $(document).ready(function() {
        // Initialize form fields from JSON
        const formFieldsJsonInput = $('#formFieldsJson');
        let formFieldsData = [];

        try {
            formFieldsData = JSON.parse(formFieldsJsonInput.val());
        } catch (e) {
            console.error('Invalid JSON in form fields');
            formFieldsData = [];
        }

        // Add new form field
        $('#addFormField').on('click', function() {
            addFormFieldItem();
        });

        // Remove form field
        $(document).on('click', '.remove-form-field', function() {
            $(this).closest('.form-field-item').remove();
            updateFormFieldsJson();
        });

        // Update JSON when inputs change
        $(document).on('change', '.field-label, .field-type, .field-name', function() {
            updateFormFieldsJson();
        });

        // Generate field name based on field label
        $(document).on('input', '.field-label', function() {
            const fieldLabel = $(this).val();
            const fieldName = fieldLabel.toLowerCase().replace(/[^a-z0-9]+/g, '_').replace(/(^_|_$)+/g, '');
            $(this).closest('.form-field-item').find('.field-name').val(fieldName);
            updateFormFieldsJson();
        });

        // Function to add a form field item
        function addFormFieldItem(fieldData = null) {
            const template = document.getElementById('formFieldTemplate');
            const clone = document.importNode(template.content, true);
            const formFieldItem = $(clone).find('.form-field-item');

            if (fieldData) {
                formFieldItem.find('.field-label').val(fieldData.label || '');
                formFieldItem.find('.field-type').val(fieldData.type || 'text');
                formFieldItem.find('.field-name').val(fieldData.name || '');
            }

            $('#formFieldsList').append(formFieldItem);
            updateFormFieldsJson();
        }

        // Function to update the form fields JSON
        function updateFormFieldsJson() {
            const formFields = [];

            $('.form-field-item').each(function() {
                const formFieldItem = $(this);

                formFields.push({
                    label: formFieldItem.find('.field-label').val(),
                    type: formFieldItem.find('.field-type').val(),
                    name: formFieldItem.find('.field-name').val()
                });
            });

            formFieldsJsonInput.val(JSON.stringify(formFields));
        }

        // Initialize existing form fields
        if (formFieldsData.length > 0) {
            formFieldsData.forEach(fieldData => {
                addFormFieldItem(fieldData);
            });
        } else {
            // Add one empty form field if none exist
            addFormFieldItem();
        }

        // Generate SEO URL
        $('#generateSlug').on('click', function() {
            const title = $('#offerTitle').val();
            const slug = title.toLowerCase().replace(/[^a-z0-9]+/g, '-').replace(/(^-|-$)+/g, '');
            $('#seoUrl').val(slug);
        });
    });
</script>
@endpush
@endsection