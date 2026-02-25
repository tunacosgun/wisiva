<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Packages extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'description',
        'products',
        'seo_url',
        'seo_title',
        'seo_description',
        'button1_name',
        'button1_url',
        'button2_name',
        'button2_url',
        'status',
        'home',
    ];

    protected $casts = [
        'products' => 'json',
        'status' => 'boolean',
        'home' => 'boolean',
    ];

    public function isActive()
    {
        return $this->status == 1;
    }
    public function isHomeActive()
    {
        return $this->home == 1;
    }

    public static function getBySlug($slug)
    {
        return self::where('seo_url', $slug)->firstOrFail();
    }
    public static function getHomeActivePackages()
    {
        return self::where('home', true)->get();
    }
    
}