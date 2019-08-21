<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class District extends Model
{
    //
    use SoftDeletes;
    protected $fillable = ['name', 'name_english', 'cover_image', 'about_district', 'sp_name', 'sp_photo', 'message'];

    public function thanas () {
        return $this->hasMany('App\Thana');
    }

    public function news () {
        return $this->hasMany('App\News');
    }
}
