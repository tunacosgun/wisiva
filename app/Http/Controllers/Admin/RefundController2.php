<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Packages;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;

class RefundController2 extends Controller
{
    public function index()
    {
        $packages = Packages::query();
        
        if (request()->filled('search')) {
            $searchTerm = '%' . request('search') . '%';
            $packages->where(function ($query) use ($searchTerm) {
                $query->where('id', 'like', $searchTerm)
                    ->orWhere('name', 'like', $searchTerm)
                    ->orWhere('description', 'like', $searchTerm)
                    ->orWhere('seo_url', 'like', $searchTerm)
                    ->orWhere('seo_title', 'like', $searchTerm)
                    ->orWhere('seo_description', 'like', $searchTerm);
            });
        }

        if (request()->filled('date_from')) {
            $dateFrom = Carbon::parse(request('date_from'))->startOfDay();
            $packages->where('created_at', '>=', $dateFrom);
        }

        if (request()->filled('date_to')) {
            $dateTo = Carbon::parse(request('date_to'))->endOfDay();
            $packages->where('created_at', '<=', $dateTo);
        }

        if (request()->filled('status')) {
            $packages->where('status', request('status'));
        }

        $packages = $packages->orderByDesc('id')->paginate(50);
        $packages->appends(request()->only(['search', 'date_from', 'date_to', 'status']));

        return view('admin.packages.index', [
            'packages' => $packages,
        ]);
    }

    public function create()
    {
        return view('admin.packages.show', ['package' => new Packages()]);
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => ['required', 'string', 'max:255'],
            'description' => ['nullable', 'string'],
            'products' => ['required', 'json'],
            'seo_url' => ['required', 'string', 'max:255', 'unique:packages,seo_url'],
            'seo_title' => ['nullable', 'string', 'max:255'],
            'seo_description' => ['nullable', 'string'],
            'button1_name' => ['nullable', 'string', 'max:255'],
            'button1_url' => ['nullable', 'string', 'max:255'],
            'button2_name' => ['nullable', 'string', 'max:255'],
            'button2_url' => ['nullable', 'string', 'max:255'],
            'status' => ['required', 'boolean'],
        ]);

        if ($validator->fails()) {
            foreach ($validator->errors()->all() as $error) {
                toastr()->error($error);
            }
            return back()->withInput();
        }

        $package = new Packages();
        $package->name = $request->name;
        $package->description = $request->description;
        $package->products = $request->products;
        $package->seo_url = $request->seo_url;
        $package->seo_title = $request->seo_title;
        $package->seo_description = $request->seo_description;
        $package->button1_name = $request->button1_name;
        $package->button1_url = $request->button1_url;
        $package->button2_name = $request->button2_name;
        $package->button2_url = $request->button2_url;
        $package->status = $request->status;
        $package->save();

        toastr()->success(translate('Package created successfully'));
        return redirect()->route('admin.packages.index');
    }

    public function show(Packages $package)
    {
        return view('admin.packages.show', ['package' => $package]);
    }

    public function update(Request $request, Packages $package)
    {
        $validator = Validator::make($request->all(), [
            'name' => ['required', 'string', 'max:255'],
            'description' => ['nullable', 'string'],
            'products' => ['required', 'json'],
            'seo_url' => ['required', 'string', 'max:255', 'unique:packages,seo_url,' . $package->id],
            'seo_title' => ['nullable', 'string', 'max:255'],
            'seo_description' => ['nullable', 'string'],
            'button1_name' => ['nullable', 'string', 'max:255'],
            'button1_url' => ['nullable', 'string', 'max:255'],
            'button2_name' => ['nullable', 'string', 'max:255'],
            'button2_url' => ['nullable', 'string', 'max:255'],
            'status' => ['required', 'boolean'],
        ]);

        if ($validator->fails()) {
            foreach ($validator->errors()->all() as $error) {
                toastr()->error($error);
            }
            return back()->withInput();
        }

        $package->name = $request->name;
        $package->description = $request->description;
        $package->products = $request->products;
        $package->seo_url = $request->seo_url;
        $package->seo_title = $request->seo_title;
        $package->seo_description = $request->seo_description;
        $package->button1_name = $request->button1_name;
        $package->button1_url = $request->button1_url;
        $package->button2_name = $request->button2_name;
        $package->button2_url = $request->button2_url;
        $package->status = $request->status;
        $package->update();

        toastr()->success(translate('Package updated successfully'));
        return back();
    }

    public function destroy(Packages $package)
    {
        $package->delete();
        toastr()->success(translate('Package deleted successfully'));
        return back();
    }

    public function generateSlug(Request $request)
    {
        $slug = Str::slug($request->name);
        return response()->json(['slug' => $slug]);
    }
}