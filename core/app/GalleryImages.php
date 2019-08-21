<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class GalleryImages extends Model
{
    //
    use SoftDeletes;

    protected $fillable = ['gallery_id', 'image_path'];
}
