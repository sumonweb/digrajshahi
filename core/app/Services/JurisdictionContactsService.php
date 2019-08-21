<?php 
namespace App\Services;

use App\JurisdictionContacts;

class JurisdictionContactsService
{
	public function all()
	{
		return JurisdictionContacts::all();
	}
}