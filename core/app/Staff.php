<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Staff extends Model
{
    //
    use SoftDeletes;

    protected $fillable = [
        'staff_name',
        'surname',
        'photo',
        'bp_no',
        'designation',
        'email',
        'mobile',
        'phone',
        'department',
        'status'
    ];
}
