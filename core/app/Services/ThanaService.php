<?php
/**
 * Created by PhpStorm.
 * User: Sumon
 * Date: 3/23/2019
 * Time: 11:21 AM
 */

namespace App\Services;

use App\Thana;

class ThanaService
{
    public function all() {

        return Thana::latest()->get();

    }
}