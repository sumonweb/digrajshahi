<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Downloadable extends Model
{
    //
    use SoftDeletes;

    protected $fillable = ['title', 'file', 'status', 'created_by'];

    public function user () {
        return $this->belongsTo('App\User', 'created_by');
    }
}
