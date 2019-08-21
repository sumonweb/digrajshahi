<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class NewsImages extends Model
{
    //
    use SoftDeletes;
    protected $fillable = [
        'news_id',
        'news_image'
    ];
}
