<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ThemeEditorController extends Controller
{
    public function index()
    {
        $path = resource_path('views/themes/basic/extra');
        $files = collect(\File::files($path));
        return view('admin.themedit.index', compact('files'));
    }

    public function edit($file)
    {
        $path = resource_path("views/themes/basic/extra/{$file}");
        if (!\File::exists($path)) {
            abort(404);
        }

        $content = \File::get($path);
        return view('admin.themedit.edit', compact('file', 'content'));
    }

   public function update(Request $request, $file)
{
    $path = resource_path("views/themes/basic/extra/{$file}");

    if (!\File::exists($path)) {
        abort(404);
    }
    $allowedExtensions = ['html', 'css', 'js', 'php'];
    $extension = pathinfo($file, PATHINFO_EXTENSION);

    if (!in_array($extension, $allowedExtensions)) {
        return redirect()->back()->withErrors('Bu dosya düzenlenemez.');
    }

    $content = $request->input('content');

    $disallowedPatterns = [
        '/<\?php/i',
        '/exec\s*\(/i',
        '/system\s*\(/i',
        '/shell_exec\s*\(/i',
        '/passthru\s*\(/i',
        '/base64_decode\s*\(/i',
    ];

    foreach ($disallowedPatterns as $pattern) {
        if (preg_match($pattern, $content)) {
            return redirect()->back()->withErrors('Bu dosyada yasaklanmış kodlar mevcut.');
        }
    }
    \File::put($path, $content);
    return redirect()->route('admin.themedit.index')->with('success', 'Dosya başarıyla güncellendi.');
}

}
