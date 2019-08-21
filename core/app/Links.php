<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Links extends Model
{
    //
    use SoftDeletes;

    protected $fillable = ['title', 'icon', 'logo', 'link', 'links_order', 'created_by', 'status'];

    public function user () {
        return $this->belongsTo('App\User', 'created_by');
    }
}
