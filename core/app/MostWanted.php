<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class MostWanted extends Model
{
    //
    use SoftDeletes;

    protected $fillable = ['name', 'additional_name', 'father_name', 'address', 'photo', 'created_by', 'status'];

    public function user () {
        return $this->belongsTo('App\User', 'created_by');
    }

}
