<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class CrimeStatistics extends Model
{
    //
    use SoftDeletes;

    protected $fillable = [
        'user_id',
        'district_id',
        'thana_id',
        'robbery',
        'murder',
        'speedy_trial',
        'riot',
        'women_child',
        'kidnapping',
        'police_assault',
        'burglary',
        'theft',
        'other',
        'total'
    ];

    public function user () {
        return $this->belongsTo('App\User', 'user_id');
    }

    public function district () {
        return $this->belongsTo('App\District');
    }

    public function thana () {
        return $this->belongsTo('App\Thana');
    }
}
