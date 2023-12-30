<?php

namespace App\Http\Controllers;

use App\Models\about;
use App\Models\achieve;
use App\Models\banner;
use App\Models\blog;
use App\Models\blogComment;
use App\Models\client;
use App\Models\customerSay;
use App\Models\feature;
use App\Models\gallery;
use App\Models\portfolio;
use App\Models\pricing;
use App\Models\privacyPolicy;
use App\Models\service;
use App\Models\setting;
use App\Models\team;
use Illuminate\Http\Request;

class FrontendController extends Controller
{
    //home
    function home(){
        $abouts = about::where('status', 1)->where('define', 1)->get();
        $banners = banner::where('status', 1)->get();
        $features = feature::where('status', 1)->get();
        $services = service::where('status', 1)->get();
        $teams = team::where('status', 1)->get();
        $gallerys = gallery::where('status', 1)->get();
        $clients = client::where('status', 1)->get();
        $achieves = achieve::where('status', 1)->get();
        $pricings = pricing::where('status', 1)->get();
        $customerSays = customerSay::where('status', 1)->get();
        $portfolios = portfolio::where('status', 1)->where('define', 2)->get();
        $blogs = blog::where('status', 1)->where('define', 2)->get();
        $settings = setting::all();
        return view('frontend.home',[
            'abouts'=>$abouts,
            'banners'=>$banners,
            'services'=>$services,
            'teams'=>$teams,
            'settings'=>$settings,
            'gallerys'=>$gallerys,
            'clients'=>$clients,
            'achieves'=>$achieves,
            'customerSays'=>$customerSays,
            'blogs'=>$blogs,
            'features'=>$features,
            'portfolios'=>$portfolios,
            'pricings'=>$pricings,
        ]);
    }

    //about_us
    function about_us(){
        $abouts = about::where('status', 1)->where('define', 2)->get();
        $services = service::where('status', 1)->get();
        $clients = client::where('status', 1)->get();
        $customerSay = customerSay::where('status', 1)->get();
        $teams = team::where('status', 1)->get();
        return view('frontend.about', [
            'abouts'=>$abouts,
            'services'=>$services,
            'clients'=>$clients,
            'teams'=>$teams,
            'customerSay'=>$customerSay,
        ]);
    }
    //services
    function services(){
        $services = service::where('status', 1)->get();
        $customerSay = customerSay::where('status', 1)->get();
        $teams = team::where('status', 1)->get();
        return view('frontend.services', [
            'services'=>$services,
            'teams'=>$teams,
            'customerSay'=>$customerSay,
        ]);
    }
    //our_pricing
    function our_pricing(){
        $pricings = pricing::where('status', 1)->get();
        $services = service::where('status', 1)->get();
        $teams = team::where('status', 1)->get();
        return view('frontend.pricing', [
            'services'=>$services,
            'teams'=>$teams,
            'pricings'=>$pricings,
        ]);
    }
    //our_portfolio
    function our_portfolio(){
        $features = feature::where('status', 1)->get();
        $portfolios = portfolio::where('status', 1)->get();
        return view('frontend.protfolio', [
            'portfolios'=>$portfolios,
            'features'=>$features,
        ]);
    }
    //details_portfolio
    function details_portfolio($id){
        $portfolios = portfolio::where('id', $id)->get();
        $features = feature::where('id', $portfolios->first()->feature_id)->get();
        return view('frontend.protfolio_details', [
            'portfolios'=>$portfolios,
            'features'=>$features,
        ]);
    }
    //our_blog
    function our_blog(){
        $blogs = blog::where('status', 1)->get();
        return view('frontend.blog',[
            'blogs'=>$blogs,
        ]);
    }
    //our_blog_details
    function our_blog_details($slug){
        $latest_blogs = blog::where('status', 1)->get();
        $blogs = blog::where('slug', $slug)->get();
        $blog_comment = blogComment::where('blogs_id', $blogs->first()->id)->get();
        $blog_comment_count = blogComment::where('blogs_id', $blogs->first()->id)->count();
        $blog_comment_all = blogComment::all();
        return view('frontend.blog_details',[
            'blogs'=>$blogs,
            'latest_blogs'=>$latest_blogs,
            'blog_comment'=>$blog_comment,
            'blog_comment_count'=>$blog_comment_count,
            'blog_comment_all'=>$blog_comment_all,
        ]);
    }
    //contect
    function contect(){
        $settings = setting::all();
        return view('frontend.contect', [
            'settings'=>$settings,
        ]);
    }
    //gallerys
    function gallerys(){
        $gallerys = gallery::where('status', 1)->get();
        return view('frontend.gallery', [
            'gallerys'=>$gallerys,
        ]);
    }
    //our_team
    function our_team(){
        $teams = team::where('status', 1)->get();
        return view('frontend.team', [
            'teams'=>$teams,
        ]);
    }
    //our_clients
    function our_clients(){
        $clients = client::all();
        return view('frontend.client',[
            'clients'=>$clients,
        ]);
    }

    function our_privacy_policy(){
        $privacyPolicy = privacyPolicy::all();
        return view('frontend.privacyPolicy', [
            'privacyPolicy'=>$privacyPolicy,
        ]);
    }

}
