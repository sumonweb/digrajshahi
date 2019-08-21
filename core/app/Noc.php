<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Noc extends Model
{
    //
    use SoftDeletes;

    protected $fillable = [
        'noc_name',
        'bp_no',
        'noc_img',
        'jurisdiction_level_id',
        'district_id',
        'thana_id',
        'uploaded_by'
    ];

    public function user () {
        return $this->belongsTo('App\User', 'uploaded_by');
    }

    public function jurisdictionLevel(){
        return $this->belongsTo('App\Jurisdictionlevel');
    }

    public function district(){
        return $this->belongsTo('App\District');
    }

    public function thana(){
        return $this->belongsTo('App\Thana');
    }
}
