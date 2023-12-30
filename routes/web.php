<?php

use App\Http\Controllers\AboutController;
use App\Http\Controllers\AchieveController;
use App\Http\Controllers\BannerController;
use App\Http\Controllers\BlogController;
use App\Http\Controllers\clientsController;
use App\Http\Controllers\CustomerMessageController;
use App\Http\Controllers\CustomerSayController;
use App\Http\Controllers\FeatureController;
use App\Http\Controllers\FrontendController;
use App\Http\Controllers\GalleryController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\PortfolioController;
use App\Http\Controllers\PricingController;
use App\Http\Controllers\PrivacyPolicyController;
use App\Http\Controllers\ServiceController;
use App\Http\Controllers\SettingController;
use App\Http\Controllers\TeamController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\UserRegController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

// frontend
Route::get('/', [FrontendController::class, 'home']);
Route::get('/about-us', [FrontendController::class, 'about_us'])->name('about_us');
Route::get('/services', [FrontendController::class, 'services'])->name('services');
Route::get('/our-portfolio', [FrontendController::class, 'our_portfolio'])->name('our.portfolio');
Route::get('/portfolio/details/{id}', [FrontendController::class, 'details_portfolio'])->name('details.portfolio');
Route::get('/our-blog', [FrontendController::class, 'our_blog'])->name('our.blog');
Route::get('/our-blog/details/{slug}', [FrontendController::class, 'our_blog_details'])->name('our.blog.details');
Route::get('/contect', [FrontendController::class, 'contect'])->name('contect');
Route::get('/gallerys', [FrontendController::class, 'gallerys'])->name('gallerys');
Route::get('/our/team', [FrontendController::class, 'our_team'])->name('our.team');
Route::get('/our/clients', [FrontendController::class, 'our_clients'])->name('our.clients');
Route::get('/our/pricing', [FrontendController::class, 'our_pricing'])->name('our.pricing');
Route::get('/our/privacy/policy', [FrontendController::class, 'our_privacy_policy'])->name('our.privacy.policy');

Route::post('/blog/comment', [BlogController::class, 'blog_comment'])->name('blog.comment');

Auth::routes();

// backend
Route::get('/home', [HomeController::class, 'index'])->name('index');
        Route::resources([
            'users'      => UserController::class,
            'banner'      => BannerController::class,
            'setting'      => SettingController::class,
            'feature'      => FeatureController::class,
            'about'        => AboutController::class,
            'team'         => TeamController::class,
            'customerSay'  => CustomerSayController::class,
            'client'       => clientsController::class,
            'portfolios'   => PortfolioController::class,
            'blog'         => BlogController::class,
            'service'      => ServiceController::class,
            'pricing'      => PricingController::class,
            'privacyPolicy'=> PrivacyPolicyController::class,
            'gallery'      => GalleryController::class,
            'achieve'      => AchieveController::class,
            'customerMessage'=> CustomerMessageController::class,
        ]);
