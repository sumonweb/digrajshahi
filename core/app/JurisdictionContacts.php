<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class JurisdictionContacts extends Model
{
    //
    use SoftDeletes;
    protected $fillable = [
        'jurisdiction_level_id',
        'district_id',
        'thana_id',
        'user_id',
        'designation',
        'person_name',
        'mobile',
        'phone',
        'fax',
        'email'
    ];

    public function user () {
        return $this->belongsTo('App\user');
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
