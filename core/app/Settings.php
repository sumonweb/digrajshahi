<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Settings extends Model
{
    //
    protected $fillable = [
        'site_name',
        'tagline',
        'logo',
        'favicon',
        'district_id',
        'thana_id',
        'address',
        'email',
        'phone',
        'fb_page_link',
        'cover_photo'
    ];
}
