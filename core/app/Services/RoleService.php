<?php
/**
 * Created by PhpStorm.
 * User: Sumon
 * Date: 3/23/2019
 * Time: 11:21 AM
 */

namespace App\Services;

use App\Role;

class RoleService
{
    public function all() {

        return Role::latest()->get();

    }
}