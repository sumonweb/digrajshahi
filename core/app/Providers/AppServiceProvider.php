<?php

namespace App\Providers;

use App\Category;
use App\District;
use App\Links;
use App\News;
use App\Settings;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;

use Illuminate\Support\Collection;
use Illuminate\Pagination\LengthAwarePaginator;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        //
    	Schema::defaultStringLength(191);

    	//DIG main home header data
    	$settings = Settings::find(1);
        view()->share('settings', $settings->id);
        view()->share('siteName', $settings->site_name);
        view()->share('tagline', $settings->tagline);
        view()->share('logo', $settings->logo);
        view()->share('favicon', $settings->favicon);
        view()->share('phone', $settings->phone);
        view()->share('fb_page_link', $settings->fb_page_link);


        //DIG news portal footer data
        $category = Category::where('status', 1)->get();
        view()->share('categories', $category);
        $district_news_footer = News::where(array('status'=>1,'jurisdiction_level_id'=>2, 'thana_id'=>null))->latest()->take(5)->get();
        view()->share('district_news_footer', $district_news_footer);
        $thana_news = News::where(array('status'=>1,'jurisdiction_level_id'=>3))->latest()->take(5)->get();
        view()->share('thana_news', $thana_news);
        //DIG main site sidebar district list
        $districts = District::all();
        view()->share('districts', $districts);

        $newscategories = Category::all()->where('status', 1);
        view()->share('newscategories', $newscategories);
        $bisesh = Category::find(2);
        $bisesh_ovijan = $bisesh->news->sortByDesc('id')->where('status', 1)->take(5);
        view()->share('bisesh_ovijan', $bisesh_ovijan);

        //DIG footer useful links data
        $links = Links::orderBy('links_order', 'asc')->where('status', 1)->paginate(30);
        view()->share('links', $links);

        Collection::macro('paginate', function($perPage, $total = null, $page = null, $pageName = 'page') {
            $page = $page ?: LengthAwarePaginator::resolveCurrentPage($pageName);
            return new LengthAwarePaginator(
                $this->forPage($page, $perPage),
                $total ?: $this->count(),
                $perPage,
                $page,
                [
                    'path' => LengthAwarePaginator::resolveCurrentPath(),
                    'pageName' => $pageName,
                ]
            );
        });

    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
        if ($this->app->environment() !== 'production') {
            $this->app->register(\Barryvdh\LaravelIdeHelper\IdeHelperServiceProvider::class);
        }
    }
}
