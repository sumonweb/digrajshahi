<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class otp extends Model
{
    //
    protected $fillable = ['nid', 'mobile', 'otp'];
}
