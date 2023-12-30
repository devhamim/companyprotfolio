@extends('frontend.layout.app')

@section('content')
<section class="ftco-section ftco-degree-bg ftco-animate">
    <div class="container">
        <div class="content">
            <div class="title-placeholder"></div>
            <p id="brcrumbs"><span><span><a href="{{ url('/') }}">Home</a> » <span><a href="{{ route('our.blog') }}">Blog</a> » <span class="breadcrumb_last" aria-current="page">{{ $blogs->first()->title }}!</span></span></span></span></p>
            <div class="row">


                <div class="col-md-8 ftco-animate" id="a">

                    <img class="ftco-section ftco-discount img ftco-animate" style="width:100%; display: block; height:auto;padding-top: 0;" src="{{ asset('uploads/blog') }}/{{ $blogs->first()->image }}" alt="Find Your Interior Design Style!">
                    <h2 class="mb-3 inner-padding">{{ $blogs->first()->title }}!</h2>
                    <div class="entry-meta inner-padding">
                        <a class="post-info" ><span class="fa fa-calendar"></span>{{ $latest_blogs->first()->created_at->format('d-M-Y') }}</</a>
                        <a class="post-info"><span class="fa fa-user"></span>Design Associates</a>
                        <a class="post-info"><span class="fa fa-edit"></span>No Comments</a>
                    </div>

                    <p>
                        <p>>{!! $blogs->first()->description !!}</p>

                </div>


{{-- 
                <div class="col-md-4 sidebar ftco-animate" id="c">

                    <div class="sidebar-box ftco-animate">
                        <h3>Find us on Facebook</h3>
                        <div class="fb-page" data-width="340px" data-href="https://www.facebook.com/designassociates.ltd/" data-small-header="true" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true">
                            <blockquote cite="https://www.facebook.com/designassociates.ltd/" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/designassociates.ltd/">Design Associates</a></blockquote>
                        </div>
                    </div>

                    <div class="sidebar-box ftco-animate">
                        <h3>Like this post</h3>
                        <div id="fb-root"></div>
                        <script async defer src="../../../connect.facebook.net/en_US/sdk.js#xfbml=1&version=v3.2&appId=2289748524589725&autoLogAppEvents=1"></script>


                        <div class="fb-like" data-width="300" data-layout="standard" data-action="like" data-size="small" data-show-faces="true" data-share="true" data-colorscheme="dark"></div>
                    </div>

                    <div class="sidebar-box ftco-animate">
                        <div class="categories">
                            <h3>Categories</h3>
                            <li><a href="../../category/uncategorized/index.html">Uncategorized <span>(0)</span></a></li>
                        </div>
                    </div>

                    <div class="sidebar-box ftco-animate">
                        <h3>Recent Blog</h3>

                        <div class="block-21 mb-4 d-flex ftco-animate"> <a class="blog-img mr-4" style="background-image: url(../../wp-content/uploads/2019/09/F5124B25-FE87-4225-BB07-7812E01BE3A8-150x150.png);"></a>
                            <div class="text">
                                <h3 class="heading"><a href="../%e0%a6%ae%e0%a6%a8-%e0%a6%af%e0%a6%96%e0%a6%a8-%e0%a6%a8%e0%a6%bf%e0%a6%9c%e0%a7%87%e0%a6%b0-%e0%a6%b6%e0%a6%b0%e0%a7%80%e0%a6%b0%e0%a7%87%e0%a6%b0-%e0%a6%ae%e0%a7%83%e0%a6%a4%e0%a7%8d%e0%a6%af/index.html" title="মন যখন নিজের শরীরের মৃত্যুর কারন!">মন যখন নিজের শরীরের মৃত্যুর কারন!</a></h3>
                                <div class="meta">
                                    <div><a href="../%e0%a6%ae%e0%a6%a8-%e0%a6%af%e0%a6%96%e0%a6%a8-%e0%a6%a8%e0%a6%bf%e0%a6%9c%e0%a7%87%e0%a6%b0-%e0%a6%b6%e0%a6%b0%e0%a7%80%e0%a6%b0%e0%a7%87%e0%a6%b0-%e0%a6%ae%e0%a7%83%e0%a6%a4%e0%a7%8d%e0%a6%af/index.html"><span class="fa fa-calendar"></span> Sep 24, 2019</a></div>
                                    <div><a href="../../author/designassociates/index.html"><span class="fa fa-user"></span> Design</a></div>
                                    <div><a href="../%e0%a6%ae%e0%a6%a8-%e0%a6%af%e0%a6%96%e0%a6%a8-%e0%a6%a8%e0%a6%bf%e0%a6%9c%e0%a7%87%e0%a6%b0-%e0%a6%b6%e0%a6%b0%e0%a7%80%e0%a6%b0%e0%a7%87%e0%a6%b0-%e0%a6%ae%e0%a7%83%e0%a6%a4%e0%a7%8d%e0%a6%af/index.html#respond"><span class="fa fa-edit"></span> 0</a></div>
                                </div>
                            </div>
                        </div>
                        <div class="block-21 mb-4 d-flex ftco-animate"> <a class="blog-img mr-4" style="background-image: url(../../wp-content/uploads/2019/09/154F7837-E03E-45A2-B897-C662A54175C4-150x150.jpg);"></a>
                            <div class="text">
                                <h3 class="heading"><a href="../%e0%a6%9a%e0%a6%be%e0%a6%b7%e0%a6%be%e0%a6%ad%e0%a7%81%e0%a6%b7%e0%a6%be%e0%a6%b0-%e0%a6%ad%e0%a7%8b%e0%a6%b2%e0%a6%be-%e0%a6%97%e0%a7%8d%e0%a6%b0%e0%a6%be%e0%a6%ae-%e0%a6%af%e0%a7%87%e0%a6%ad/index.html" title="চাষাভুষার ভোলা গ্রাম যেভাবে আজকের গুলশান! !">চাষাভুষার ভোলা গ্রাম যেভাবে আজকের গুলশান! !</a></h3>
                                <div class="meta">
                                    <div><a href="../%e0%a6%9a%e0%a6%be%e0%a6%b7%e0%a6%be%e0%a6%ad%e0%a7%81%e0%a6%b7%e0%a6%be%e0%a6%b0-%e0%a6%ad%e0%a7%8b%e0%a6%b2%e0%a6%be-%e0%a6%97%e0%a7%8d%e0%a6%b0%e0%a6%be%e0%a6%ae-%e0%a6%af%e0%a7%87%e0%a6%ad/index.html"><span class="fa fa-calendar"></span> Sep 12, 2019</a></div>
                                    <div><a href="../../author/designassociates/index.html"><span class="fa fa-user"></span> Design</a></div>
                                    <div><a href="../%e0%a6%9a%e0%a6%be%e0%a6%b7%e0%a6%be%e0%a6%ad%e0%a7%81%e0%a6%b7%e0%a6%be%e0%a6%b0-%e0%a6%ad%e0%a7%8b%e0%a6%b2%e0%a6%be-%e0%a6%97%e0%a7%8d%e0%a6%b0%e0%a6%be%e0%a6%ae-%e0%a6%af%e0%a7%87%e0%a6%ad/index.html#respond"><span class="fa fa-edit"></span> 0</a></div>
                                </div>
                            </div>
                        </div>
                        <div class="block-21 mb-4 d-flex ftco-animate"> <a class="blog-img mr-4" style="background-image: url(../../wp-content/uploads/2019/07/interior-design-styles-min-150x150.jpg);"></a>
                            <div class="text">
                                <h3 class="heading"><a href="index.html" title="Find Your Interior Design Style!">Find Your Interior Design Style!</a></h3>
                                <div class="meta">
                                    <div><a href="index.html"><span class="fa fa-calendar"></span> Jul 27, 2019</a></div>
                                    <div><a href="../../author/designassociates/index.html"><span class="fa fa-user"></span> Design</a></div>
                                    <div><a href="index.html#respond"><span class="fa fa-edit"></span> 0</a></div>
                                </div>
                            </div>
                        </div>
                        <div class="block-21 mb-4 d-flex ftco-animate"> <a class="blog-img mr-4" style="background-image: url(../../wp-content/uploads/2019/07/home-150x150.jpg);"></a>
                            <div class="text">
                                <h3 class="heading"><a href="../how-interior-designers-help-make-your-house-a-home/index.html" title="How Interior Designers Help Make Your House a Home !">How Interior Designers Help Make Your House a Home !</a></h3>
                                <div class="meta">
                                    <div><a href="../how-interior-designers-help-make-your-house-a-home/index.html"><span class="fa fa-calendar"></span> Jul 27, 2019</a></div>
                                    <div><a href="../../author/designassociates/index.html"><span class="fa fa-user"></span> Design</a></div>
                                    <div><a href="../how-interior-designers-help-make-your-house-a-home/index.html#respond"><span class="fa fa-edit"></span> 0</a></div>
                                </div>
                            </div>
                        </div>
                        <div class="block-21 mb-4 d-flex ftco-animate"> <a class="blog-img mr-4" style="background-image: url(../../wp-content/uploads/2019/07/bachelor_room-150x150.jpg);"></a>
                            <div class="text">
                                <h3 class="heading"><a href="../care-of-bachelor-room/index.html" title="কেয়ার অফ ব্যাচেলর রুম">কেয়ার অফ ব্যাচেলর রুম</a></h3>
                                <div class="meta">
                                    <div><a href="../care-of-bachelor-room/index.html"><span class="fa fa-calendar"></span> Jul 25, 2019</a></div>
                                    <div><a href="../../author/designassociates/index.html"><span class="fa fa-user"></span> Design</a></div>
                                    <div><a href="../care-of-bachelor-room/index.html#respond"><span class="fa fa-edit"></span> 0</a></div>
                                </div>
                            </div>
                        </div>
                    </div>


                </div> --}}





            </div>
        </div>
    </div>
</section>
@endsection

