<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class News extends Model
{
    //
    use SoftDeletes;
    protected $fillable = [
        'title',
        'news_date',
        'description',
        'cover_image',
        'video',
        'jurisdiction_level_id',
        'district_id',
        'thana_id',
        'posted_by',
        'approved_by',
        'approval_date',
        'posting_ip',
        'approval_ip',
        'status'
    ];

    public function user () {
        return $this->belongsTo('App\User', 'posted_by');
    }

    public function approver () {
        return $this->belongsTo('App\User', 'approved_by');
    }

    public function categories () {
        return $this->belongsToMany('App\Category');
    }

    public function newsimages () {
        return $this->hasMany('App\NewsImages');
    }

    public function jurisdictionLevel () {
        return $this->belongsTo('App\Jurisdictionlevel');
    }

    public function district () {
        return $this->belongsTo('App\District');
    }

    public function thana () {
        return $this->belongsTo('App\Thana');
    }
}
