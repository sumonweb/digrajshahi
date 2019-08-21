<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Category extends Model
{
    //
    use SoftDeletes;
    protected $fillable = [
        'category_name',
        'slug',
        'root',
        'created_by',
        'created_ip',
        'status'
    ];

    public function news(){
        return $this->belongsToMany('App\News');
    }
}
