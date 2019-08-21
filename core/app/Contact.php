<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Contact extends Model
{
    //
    use SoftDeletes;

    protected $fillable = [
        'contact_type',
        'person_name',
        'mobile',
        'email',
        'address',
        'receiver',
        'message',
        'otp',
        'nid',
        'privacy',
        'status'
    ];

    public function seen () {
        return $this->belongsTo('App\User', 'seen_by');
    }

    public function replied () {
        return $this->belongsTo('App\User', 'replied_by');
    }
}
