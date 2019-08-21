<?php

namespace App;

use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Zizaco\Entrust\Traits\EntrustUserTrait;

class User extends Authenticatable
{
    use Notifiable;
    use EntrustUserTrait { restore as private restoreA; }
    use SoftDeletes { restore as private restoreB; }

    public function restore()
    {
        $this->restoreA();
        $this->restoreB();
    }
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name',
        'email',
        'password',
        'phone',
        'status',
        'bp_position',
        'jurisdiction_level_id',
        'district_id',
        'thana_id',
        'photo',
        'last_login'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    public function jurisdictionLevel(){
        return $this->belongsTo('App\Jurisdictionlevel');
    }

    public function district(){
        return $this->belongsTo('App\District');
    }

    public function thana(){
        return $this->belongsTo('App\Thana');
    }

    public function tenders() {
        return $this->hasMany('App\Tender');
    }
}
