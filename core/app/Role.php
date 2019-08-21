<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Zizaco\Entrust\EntrustRole;

class Role extends EntrustRole
{
    //
    use SoftDeletes;

    protected $fillable = [
        'name',
        'display_name',
        'description'
    ];
}
