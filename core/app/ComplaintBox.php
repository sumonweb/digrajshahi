<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ComplaintBox extends Model
{
    //
    protected $fillable = [
        'complainer_name',
        'complainer_email',
        'complainer_mobile',
        'complainer_address',
        'subject',
        'complaint',
        'viewed_by',
        'viewed_date_time'
    ];
}
