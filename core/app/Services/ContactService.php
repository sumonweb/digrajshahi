<?php
/**
 * Created by PhpStorm.
 * User: Sumon
 * Date: 3/23/2019
 * Time: 1:56 PM
 */

namespace App\Services;

use App\Contact;


class ContactService
{
    public function complaint() {
        return Contact::where('contact_type', 'complaint')->orderBy('created_at', 'asc')->latest()->get();
    }

    public function info() {
        return Contact::where('contact_type', 'information')->orderBy('created_at', 'asc')->latest()->get();
    }
}