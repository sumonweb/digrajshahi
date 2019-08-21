<?php
/**
 * Created by PhpStorm.
 * User: Sumon
 * Date: 3/23/2019
 * Time: 11:21 AM
 */

namespace App\Services;

use App\User;

class UserService
{
    public function all() {

        return User::where('status', 1)->orderBy('created_at', 'asc')->latest()->get();

    }
}