<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Thana extends Model
{
    //
    use SoftDeletes;
    protected $fillable = ['name', 'district_id', 'thana_image', 'about_thana', 'map'];

    public function district () {
        return $this->belongsTo('App\District');
    }

    public function news () {
        return $this->hasMany('App\News');
    }
}
