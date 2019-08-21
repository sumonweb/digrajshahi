<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Service extends Model
{
    //
    use SoftDeletes;
    protected $fillable = [
        'service_name',
        'service_image',
        'service_icon',
        'description',
        'status'
    ];
}
