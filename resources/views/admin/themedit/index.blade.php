@extends('admin.layouts.grid')
@section('section', translate('Görünüm'))
@section('title', translate('Tema Düzenleyici'))
@section('container', 'container-max-lg')
@section('content')
    <div class="card">
        <ul class="list-group">
           @php
    $fileNames = [
        'integration.blade.php' => 'Entegrasyon Çözümleri',
        'ecommerce.blade.php' => 'E-Ticaret Çözümleri',
        'webdesign.blade.php' => 'Web Tasarım Hizmetleri',
        'seo.blade.php' => 'Seo Hizmetleri',
    ];
@endphp

@foreach ($files as $file)
    <li class="list-group-item d-flex justify-content-between align-items-center">
        {{ $fileNames[$file->getFilename()] ?? $file->getFilename() }}
        <a href="{{ route('admin.themedit.edit', $file->getFilename()) }}" class="btn btn-primary">Düzenle</a>
    </li>
@endforeach

        </ul>
    </div>
@endsection
