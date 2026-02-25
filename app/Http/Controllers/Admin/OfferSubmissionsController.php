<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\OfferSubmissions;
use Illuminate\Http\Request;

class OfferSubmissionsController extends Controller
{
    public function index()
    {
        $submissions = OfferSubmissions::orderByDesc('created_at')->paginate(50);
        return view('admin.offer_submissions.index', compact('submissions'));
    }

    public function show($id)
    {
        $submission = OfferSubmissions::findOrFail($id);
        return view('admin.offer_submissions.show', compact('submission'));
    }
}
