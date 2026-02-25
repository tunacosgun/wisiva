<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ExtraController extends Controller
{
    public function integration()
    {
        return theme_view('extra.integration');
    }

    public function ecommerce()
    {
        return theme_view('extra.ecommerce');
    }

    public function seo()
    {
        return theme_view('extra.seo');
    }

    public function webdesign()
    {
        return theme_view('extra.webdesign');
    }
}
