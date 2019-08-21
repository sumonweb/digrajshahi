<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Gallery extends Model
{
    //
    use SoftDeletes;

    protected $fillable = ['gallery_name', 'cover_img', 'video', 'caption', 'description', 'status', 'created_by'];

    public function user () {
        return $this->belongsTo('App\User', 'created_by');
    }

    public function galleryimages () {
        return $this->hasMany('App\GalleryImages');
    }
}
