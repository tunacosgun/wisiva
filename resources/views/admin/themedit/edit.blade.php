@extends('admin.layouts.grid')
@section('section', translate('Tema Düzenleyici'))
@php
    $fileNames = [
        'entegrasyon.blade.php' => 'Entegrasyon Çözümleri',
        'ecommerce.blade.php' => 'E-Ticaret Çözümleri',
        'webdesign.blade.php' => 'Web Tasarım Hizmetleri',
        'seo.blade.php' => 'Seo Hizmetleri',
    ];
    $displayFileName = $fileNames[$file] ?? $file;
@endphp
@section('title', translate('Dosya : ') . $displayFileName)
@section('container', 'container-max-lg')
@section('content')
    <div class="card">
        <div class="card-header d-flex justify-content-between align-items-center">
            <h5 class="mb-0">{{ translate('Dosya Düzenleme: ') . $displayFileName }}</h5>
            <a href="{{ route('admin.themedit.index') }}" class="btn btn-secondary btn-sm">
                <i class="fas fa-arrow-left"></i> {{ translate('Geri Dön') }}
            </a>
        </div>
        <form method="POST" action="{{ route('admin.themedit.update', $file) }}">
            @csrf
            <div class="form-group mt-3">
                <textarea id="editor" name="content">{{ $content }}</textarea>
            </div>
            <div class="d-flex justify-content-end">
                <button type="submit" class="btn btn-success mt-3">
                    <i class="fas fa-save"></i> {{ translate('Kaydet') }}
                </button>
            </div>
        </form>
    </div>
@endsection

@push('styles')
    <!-- CodeMirror CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.65.10/codemirror.min.css">
    <style>
        .CodeMirror {
            height: 750px;
            border: 1px solid #ddd;
            font-size: 14px;
            border-radius: 5px;
    width: 98%;
    margin: 0px auto;
        }
    </style>
@endpush

@push('scripts')
    <!-- CodeMirror JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.65.10/codemirror.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.65.10/mode/htmlmixed/htmlmixed.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.65.10/mode/php/php.min.js"></script>
    <script>
        // CodeMirror Entegrasyonu
        CodeMirror.fromTextArea(document.getElementById("editor"), {
            lineNumbers: true,
            mode: "application/x-httpd-php", // PHP için uygun mod
            theme: "default", // Varsayılan tema
        });
    </script>
@endpush
