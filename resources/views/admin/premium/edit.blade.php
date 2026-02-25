@extends('layouts.admin')

@section('content')
    <h1>{{ $filename }} Düzenle</h1>

    @if (session('error'))
        <div class="alert alert-danger">{{ session('error') }}</div>
    @endif

    <form action="{{ route('admin.themes.update') }}" method="POST">
        @csrf
        <input type="hidden" name="filename" value="{{ $filename }}">
        <textarea id="code-editor" name="content">{{ $content }}</textarea>
        <button type="submit" class="btn btn-success">Kaydet</button>
    </form>
@endsection

@section('scripts')
    <!-- CodeMirror Kütüphanesi -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.65.13/codemirror.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.65.13/codemirror.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.65.13/mode/htmlmixed/htmlmixed.min.js"></script>

    <script>
        var editor = CodeMirror.fromTextArea(document.getElementById("code-editor"), {
            mode: "htmlmixed",
            lineNumbers: true,
            theme: "default",
            matchBrackets: true,
            autoCloseTags: true
        });
    </script>
@endsection
