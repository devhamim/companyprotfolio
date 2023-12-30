<?php

namespace App\Providers;

use App\Models\setting;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\ServiceProvider;
use View;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        // setting
        View::composer('frontend.layout.footer', function ($view){
            $view->with('setting', setting::all());
        });
        // setting
        View::composer('frontend.layout.header', function ($view){
            $view->with('setting', setting::all());
        });
        // setting
        View::composer('frontend.layout.app', function ($view){
            $view->with('setting', setting::all());
        });
        // setting
        View::composer('frontend.home', function ($view){
            $view->with('setting', setting::all());
        });
        // setting
        View::composer('frontend.contect', function ($view){
            $view->with('setting', setting::all());
        });

         // setting
         View::composer('backend.layouts.header', function ($view){
            $view->with('setting', setting::all());
        });
         // setting
         View::composer('backend.layouts.footer', function ($view){
            $view->with('setting', setting::all());
        });
        // setting
        View::composer('backend.layouts.app', function ($view){
            $view->with('setting', setting::all());
        });
        // users
        View::composer('backend.layouts.header', function ($view){
            $view->with('users', User::where('id', Auth::user()->id));
        });
    }
}
