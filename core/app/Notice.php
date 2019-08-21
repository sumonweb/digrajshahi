<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Notice extends Model
{
    //
    use SoftDeletes;

    protected $fillable = [
        'notice_type',
        'notice_title',
        'notice_file',
        'notice',
        'jurisdiction_level_id',
        'district_id',
        'thana_id',
        'created_by',
        'creator_ip',
        'approved_by',
        'approval_date',
        'approving_ip',
        'status'
    ];

    public function user () {
        return $this->belongsTo('App\User', 'created_by');
    }

    public function approver () {
        return $this->belongsTo('App\User', 'approved_by');
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
