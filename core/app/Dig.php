<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Dig extends Model
{
    //
    use SoftDeletes;
    protected $fillable = [
        'dig_name',
        'period_from',
        'period_to',
        'photo',
        'message',
        'status'
    ];
}
