<?php

namespace App\Http\Controllers;

use App;
use App\Http\Controllers\Controller;
use App\Methods\ReCaptchaValidation;
use App\Models\Favorite;
use App\Models\Page;
use App\Models\Offers;
use App\Models\OfferSubmissions;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cookie;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Log;

class GeneralController extends Controller
{
    public function page($slug)
    {
        $page = Page::where('slug', $slug)->firstOrFail();
        incrementViews($page, 'pages');
        return theme_view('page', ['page' => $page]);
    }

    public function contact()
    {
        return theme_view('contact');
    }

    public function contactSend(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'email', 'max:255'],
            'subject' => ['required', 'string', 'max:255'],
            'message' => ['required', 'string'],
        ] + app(ReCaptchaValidation::class)->validate());

        if ($validator->fails()) {
            foreach ($validator->errors()->all() as $error) {
                toastr()->error($error);
            }
            return back()->withInput();
        }

        try {
            $name = $request->name;
            $email = $request->email;
            $subject = $request->subject;
            $msg = purifier($request->message);

            \Mail::send([], [], function ($message) use ($msg, $email, $subject, $name) {
                $message->to(@settings('general')->contact_email)
                    ->from(env('MAIL_FROM_ADDRESS'), $name)
                    ->replyTo($email)
                    ->subject($subject)
                    ->html($msg);
            });

            toastr()->success(translate('Your message has been sent successfully'));
            return back();
        } catch (\Exception $e) {
            toastr()->error(lang('Error on sending'));
            return back();
        }
    }

    public function favorites()
    {
        $favorites = Favorite::where('user_id', authUser()->id);

        if (request()->filled('search')) {
            $searchTerm = '%' . request('search') . '%';
            $favorites->whereHas('item', function ($query) use ($searchTerm) {
                $query->where('name', 'like', $searchTerm)
                    ->OrWhere('slug', 'like', $searchTerm)
                    ->OrWhere('description', 'like', $searchTerm)
                    ->OrWhere('options', 'like', $searchTerm)
                    ->OrWhere('demo_link', 'like', $searchTerm)
                    ->OrWhere('tags', 'like', $searchTerm)
                    ->OrWhereHas('category', function ($query) use ($searchTerm) {
                        $query->where('name', 'like', $searchTerm);
                    })
                    ->OrWhereHas('subCategory', function ($query) use ($searchTerm) {
                        $query->where('name', 'like', $searchTerm);
                    });
            });
        }

        $favorites = $favorites->paginate(30);
        $favorites->appends(request()->only(['search']));

        return theme_view('favorites', ['favorites' => $favorites]);
    }

    public function cookie()
    {
        Cookie::queue('gdpr_cookie', true, 1440 * 30);
    }

    public function packages($slug)
    {
        try {
            $package = \App\Models\Packages::getBySlug($slug);
            return view('themes.basic.packages', compact('package'));
        } catch (\Exception $e) {
            Log::error('Error fetching package: ' . $e->getMessage());
            abort(500, 'An error occurred while fetching the package.');
        }
    }

    public function offer($slug)
    {
        try {
            $offer = Offers::getBySlug($slug);
           
            return view('themes.basic.offers', compact('offer'));
        } catch (\Exception $e) {
            Log::error('Error fetching offer: ' . $e->getMessage());
            abort(500, 'An error occurred while fetching the offer.');
        }
    }

    public function submitOffer(Request $request, $slug)
    {
        try {
            $offer = Offers::getBySlug($slug);
            $formFields = json_decode($offer->form_fields, true);

            $rules = [];
            foreach ($formFields as $field) {
                $rules[$field['name']] = 'required';
            }

            $validator = Validator::make($request->all(), $rules);

            if ($validator->fails()) {
                return back()->withErrors($validator)->withInput();
            }

            $submission = new OfferSubmissions();
            $submission->offer_slug = $slug;
            $submission->form_data = json_encode($request->except('_token'));
            $submission->save();

            return back()->with('success', 'Form submitted successfully.');
        } catch (\Exception $e) {
            Log::error('Error submitting offer form: ' . $e->getMessage());
            abort(500, 'An error occurred while submitting the form.');
        }
    }

    public function premiumItems()
    {
        try {
            $package = \App\Models\Packages::getBySlug('ihtiyaciniza-en-uygun-e-ticaret-paketleri');
            return view('themes.basic.sections.premium-items', compact('package'));
        } catch (\Exception $e) {
            Log::error('Error fetching package: ' . $e->getMessage());
            abort(500, 'An error occurred while fetching the package.');
        }
    }
}
