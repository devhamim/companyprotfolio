@extends('frontend.layout.app')

@section('content')
<!--====== PAGE TITLE  PART START ======-->

<div class="page-title-area">
    <div class="section__bg"></div>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="page-title-content text-center">
                    <h3 class="title">Services</h3>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="{{ url('/') }}">Home</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Services</li>
                        </ol>
                    </nav>
                    <div class="scroll-to-down">
                        <a href="#portfolio-scroll"><i class="fal fa-arrow-down"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!--====== PAGE TITLE  PART ENDS ======-->

<!--====== SERVICE PART START ======-->

<section class="service-area service-page-area pb-100">
    <div class="container">
        <div class="row justify-content-center">
            @foreach ($services as $service)
            <div class="col-lg-4 col-md-6 col-sm-11">
                <div class="service-2-item text-center mt-30 animated wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="0ms">
                    <div class="icon">
                        <img src="{{ asset('uploads/service') }}/{{ $service->icon }}" alt="">
                    </div>
                    <h4 class="title">{{ $service->title }}</h4>
                    <p>{{ $service->sort_desp }}</p>
                    <div class="service-dot">
                        <img src="assets/images/service-dot-2.png" alt="">
                        <div class="item">
                            <img src="assets/images/icon/service-icon-1.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</section>

<!--====== SERVICE PART ENDS ======-->

<!--====== TESTIMONIAL PART START ======-->

<section class="testimonial-2-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="section-title-3">
                    <span>Testimonial</span>
                    <h3 class="title">What our clients say about our agency.</h3>
                </div>
                <div class="testimonial-2-active mt-100">
                    @foreach ($customerSay as $customer)
                    <div class="item">
                        <span></span>
                        <p>{!! $customer->description !!}</p>
                        <div class="info mt-30">
                            <img width="50px" src="{{ asset('uploads/customersay') }}/{{ $customer->image }}" alt="">
                            <h5>{{ $customer->name }}</h5>
                            <span>{{ $customer->post }}</span>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</section>

<!--====== TESTIMONIAL PART ENDS ======-->

<!--====== TEAM PART START ======-->

<section class="team-2-area gray-bg">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title-3 text-center">
                    <span>Our Team</span>
                    <h3 class="title">Special Team</h3>
                </div>
            </div>
        </div>
        <div class="row justify-content-center">
            @foreach ($teams->take(4) as $team)
            <div class="col-lg-3 col-md-6 col-sm-8">
                <div class="team-2-item team-service-item mt-30 animated wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="0ms">
                    <img src="{{ asset('uploads/team') }}/{{ $team->image }}" alt="">
                    <div class="team-overlay">
                        <div class="item">
                            <h4 class="title">{{ $team->name }}</h4>
                            <span>{{ $team->post }}</span>
                            {{-- <ul>
                                <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                                <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fab fa-youtube"></i></a></li>
                                <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                            </ul> --}}
                        </div>
                    </div>
                    <div class="team-overlay-2 text-center">
                        <img src="{{ asset('uploads/team') }}/{{ $team->image }}" alt="">
                        <h4 class="title">{{ $team->name }}</h4>
                        <span>{{ $team->post }}</span>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</section>

<!--====== TEAM PART ENDS ======-->
@endsection
