<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Offers extends Model
{
    use HasFactory;

    protected $fillable = [
        'title',
        'description',
        'seo_url',
        'seo_title',
        'seo_description',
        'status',
        'form_fields', // Add this line
    ];

    protected $casts = [
        'status' => 'boolean',
        'form_fields' => 'json', // Add this line
    ];

    public function isActive()
    {
        return $this->status == 1;
    }

    public static function getBySlug($slug)
    {
        return self::where('seo_url', $slug)->firstOrFail();
    }
}
