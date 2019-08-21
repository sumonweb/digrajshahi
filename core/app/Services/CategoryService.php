<?php
/**
 * Created by PhpStorm.
 * User: Sumon
 * Date: 3/23/2019
 * Time: 11:21 AM
 */

namespace App\Services;

use App\Category;

class CategoryService
{
    public function all() {

        return Category::latest()->get();

    }
}