@extends('frontend.layout.app')

@section('content')
<main id="content" role="main">
    <div class="containera container-masonry">
        <h2 class="title">Mujib Corner</h2>
        <a class="backbtn" href="javascript:history.go(-1)"></a>
        <p id="brcrumbs"><span><span><a href="{{ url('/') }}">Home</a> » <span><a href="../index.html">Portfolio</a> » <span class="breadcrumb_last" aria-current="page">{{ $portfolios->first()->name }}</span></span></span></span></p>
        <div class="inner">
            <div class="rowa">
                <div class="box col-sm-4a col-md-6a ftco-animate">
                    <div class="thumb featured">
                        <div class="photo">
                            <a href="{{ asset('uploads/portfolio') }}/{{ $portfolios->first()->image }}" class="image-popup">
                                <img src="{{ asset('uploads/portfolio') }}/{{ $portfolios->first()->image }}" alt="Mujib Corner" width="555" height="555">

                                <span class="info">
                                    <stronga class="title">{{ $portfolios->first()->name }}</stronga>
                                    <span class="excerpt"></span>
                                    <span class="excerpt">
                                        {{ $portfolios->first()->client }} </span>
                                    <em class="arrow-right"></em>
                                </span>
                            </a>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <div class="clear"></div>

        <div id="fb-root"></div>
        <script async defer src="../../../connect.facebook.net/en_US/sdk.js#xfbml=1&version=v3.2&appId=2289748524589725&autoLogAppEvents=1"></script>
        <div style="float:right;">
            <div class="fb-like" data-layout="button_count" data-action="like" data-size="small" data-show-faces="true" data-share="true" data-colorscheme="dark"></div>

        </div>
    </div>
</main>
@endsection

