<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OfferSubmissions extends Model
{
    use HasFactory;

    protected $fillable = [
        'offer_slug',
        'form_data',
    ];

    protected $casts = [
        'form_data' => 'json',
    ];
}
