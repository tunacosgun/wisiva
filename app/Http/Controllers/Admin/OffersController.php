<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Offers;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;

class OffersController extends Controller
{
    public function index()
    {
        $offers = Offers::query();
        
        if (request()->filled('search')) {
            $searchTerm = '%' . request('search') . '%';
            $offers->where(function ($query) use ($searchTerm) {
                $query->where('id', 'like', $searchTerm)
                    ->orWhere('title', 'like', $searchTerm)
                    ->orWhere('description', 'like', $searchTerm)
                    ->orWhere('seo_url', 'like', $searchTerm)
                    ->orWhere('seo_title', 'like', $searchTerm)
                    ->orWhere('seo_description', 'like', $searchTerm);
            });
        }

        if (request()->filled('date_from')) {
            $dateFrom = Carbon::parse(request('date_from'))->startOfDay();
            $offers->where('created_at', '>=', $dateFrom);
        }

        if (request()->filled('date_to')) {
            $dateTo = Carbon::parse(request('date_to'))->endOfDay();
            $offers->where('created_at', '<=', $dateTo);
        }

        if (request()->filled('status')) {
            $offers->where('status', request('status'));
        }

        $offers = $offers->orderByDesc('id')->paginate(50);
        $offers->appends(request()->only(['search', 'date_from', 'date_to', 'status']));

        return view('admin.offers.index', [
            'offers' => $offers,
        ]);
    }

    public function create()
    {
        return view('admin.offers.show', ['offer' => new Offers()]);
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'title' => ['required', 'string', 'max:255'],
            'description' => ['nullable', 'string'],
            'seo_url' => ['required', 'string', 'max:255', 'unique:offers,seo_url'],
            'seo_title' => ['nullable', 'string', 'max:255'],
            'seo_description' => ['nullable', 'string'],
            'status' => ['required', 'boolean'],
            'form_fields' => ['nullable', 'json'],
        ]);

        if ($validator->fails()) {
            foreach ($validator->errors()->all() as $error) {
                toastr()->error($error);
            }
            return back()->withInput();
        }

        $offer = new Offers();
        $offer->title = $request->title;
        $offer->description = $request->description;
        $offer->seo_url = $request->seo_url;
        $offer->seo_title = $request->seo_title;
        $offer->seo_description = $request->seo_description;
        $offer->status = $request->status;
        $offer->form_fields = $request->form_fields;
        $offer->save();

        toastr()->success(translate('Offer created successfully'));
        return redirect()->route('admin.offers.index');
    }

    public function show(Offers $offer)
    {
        return view('admin.offers.show', ['offer' => $offer]);
    }

    public function update(Request $request, Offers $offer)
    {
        $validator = Validator::make($request->all(), [
            'title' => ['required', 'string', 'max:255'],
            'description' => ['nullable', 'string'],
            'seo_url' => ['required', 'string', 'max:255', 'unique:offers,seo_url,' . $offer->id],
            'seo_title' => ['nullable', 'string', 'max:255'],
            'seo_description' => ['nullable', 'string'],
            'status' => ['required', 'boolean'],
            'form_fields' => ['nullable', 'json'],
        ]);

        if ($validator->fails()) {
            foreach ($validator->errors()->all() as $error) {
                toastr()->error($error);
            }
            return back()->withInput();
        }

        $offer->title = $request->title;
        $offer->description = $request->description;
        $offer->seo_url = $request->seo_url;
        $offer->seo_title = $request->seo_title;
        $offer->seo_description = $request->seo_description;
        $offer->status = $request->status;
        $offer->form_fields = $request->form_fields;
        $offer->update();

        toastr()->success(translate('Offer updated successfully'));
        return back();
    }

    public function destroy(Offers $offer)
    {
        $offer->delete();
        toastr()->success(translate('Offer deleted successfully'));
        return back();
    }

    public function generateSlug(Request $request)
    {
        $slug = Str::slug($request->title);
        return response()->json(['slug' => $slug]);
    }
}
