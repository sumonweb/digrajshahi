<?php 
namespace App\Services;

use App\News;

class NewsService
{
	public function all()
	{
		return News::where('status',1)->orderBy('created_at','asc')->latest()->get();
	}
	public function unpublished() {
	    return News::where('status', 0)->orderBy('created_at', 'asc')->latest()->get();
    }
}