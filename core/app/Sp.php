<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Sp extends Model
{
    //
    use SoftDeletes;

    protected $fillable = [
        'sp_name',
        'district_id',
        'period_from',
        'period_to',
        'photo',
    ];

    public function district () {
        return $this->belongsTo('App\District');
    }
}
