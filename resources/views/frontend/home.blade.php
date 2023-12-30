@extends('frontend.layout.app')

@section('content')

<div class="hero-wrap" style="background-image: url('{{ asset('uploads/banner') }}/{{ $banners->first()->image }}');" data-stellar-background-ratio="0.5" >
    <div class="overlay" id="particles"></div>
    <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center"
            data-scrollax-parent="true">
            <div class="col-md-6 text-center ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
                <h1 class="mb-3 mt-5 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">{{ $banners->first()->title }}</h1>
                <h2 class="pr">{{ $banners->first()->description }}</h2>
                <p data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><a href="tel:{{ $setting->first()->number }}"
                        class="btn btn-primary px-3 py-3">Call: {{ $setting->first()->number }}</a></p>
            </div>
        </div>
    </div>
</div>

<section class="ftco-intro">
<div class="container-wrap">
    <div class="wrap d-md-flex align-items-end">
        <div class="info">
            <div class="row no-gutters">
                <div class="col-md-4 d-flex ftco-animate">
                    <div class="icon"><span class="fa fa-phone"></span></div>
                    <div class="text"><a href="tel:{{ $setting->first()->number }}">
                            <h3>{{ $setting->first()->number }}</h3>
                        </a>
                    </div>
                </div>
                <div class="col-md-4 d-flex ftco-animate">
                    <div class="icon"><span class="fa fa-map-marker"></span></div>
                    <div class="text">
                        <h3>{{ $setting->first()->address }}</h3>
                    </div>
                </div>
                <div class="col-md-4 d-flex ftco-animate">
                    <div class="icon"><span class="fa fa-clock-o"></span></div>
                    <div class="text">
                        <h3>{{ $setting->first()->email }}</h3>
                    </div>
                </div>
            </div>
        </div>
        <div class="social pl-md-5 p-4">
            <ul id="menu-social-menu" class="social-icon">
                <li id="menu-item-18" class="nav-item"><a title="Facebook"
                        href="{{ $setting->first()->facebook }}" class="nav-link"><span
                            class="fa"></span></a></li>
                <li id="menu-item-19" class="nav-item"><a title="Twitter"
                        href="{{ $setting->first()->twitter }}" class="nav-link"><span class="fa"></span></a>
                </li>
                <li id="menu-item-21" class="nav-item"><a title="Instagram"
                        href="{{ $setting->first()->instagram }}" class="nav-link"><span
                            class="fa"></span></a></li>
                <li id="menu-item-22" class="nav-item"><a title="Linkedin"
                        href="{{ $setting->first()->linkedin }}" class="nav-link"><span
                            class="fa"></span></a></li>
            </ul>
        </div>
    </div>
</div>
</section>
<section class="ftco-section">
<div class="container">
    <div class="row justify-content-center mb-4">
        <div class="col-md-7 heading-section ftco-animate text-center">
            <h2 class="mb-4">{{ $abouts->first()->title }}</h2>
            <p>{{ $abouts->first()->subtitle }}</p>
            <p class="flip"><span class="deg1"></span><span class="deg2"></span><span class="deg3"></span></p>
        </div>
    </div>
    <div class="row2 justify-content-center">
        <div class="ftco-animate">
            <p>{!! $abouts->first()->description !!}</p>

        </div>
    </div>
</div>
</section>
<section class="ftco-section ftco-bg-dark">
<div class="container">
    <div class="row justify-content-center mb-5 pb-3">
        <div class="col-md-7 heading-section ftco-animate text-center">
            <h2 class="mb-4">Key Factors</h2>
            <p class="flip"><span class="deg1"></span><span class="deg2"></span><span class="deg3"></span></p>
            <p class="mt-5">Design Associates has built over the years a dedicated and imaginative team of
                designers who work to understand client needs and reflect these into our designs.</p>
        </div>
    </div>
    <div class="row">
        @foreach ($features->take(4) as $feature)
        <div class="col-md-3 ftco-animate">
            <div class="media d-block text-center block-6 services">
                <div class="icon d-flex justify-content-center align-items-center mb-4">
                    <img width="45px" src="{{ asset('uploads/feature') }}/{{ $feature->icon }}" alt="">
                </div>
                <div class="media-body">
                    <h3 class="heading">{{ $feature->name }}</h3>
                    <p>{{ $feature->description }}</p>
                </div>
            </div>
        </div>
        @endforeach
    </div>
</div>
</section>
<section class="ftco-section ftco-animate">
<div class="container">
    <div class="row d-flex">
        <div class="col-md-6 d-flex ftco-animate">
            <div class="img img-about align-self-stretch"
                style="background-image: url({{ asset('frontend') }}/wp-content/uploads/2019/05/still-600x846.jpg); width: 100%;"></div>
        </div>
        <div class="col-md-6 pl-md-5 ftco-animate">
            <h2><span>Design Associates</span></h2>
            <h1 class="mb-4 tes">Interior Design Company in Dhaka</h1>
            <p>Design Associates is an interior design office made up of a dedicated and imaginative team of
                designers who work to understand client needs and reflect these into our designs. Established in
                2014, we began with a successful client portfolio in Dhaka, including work for both major local
                and international clients, and then expanded our services throughout Bangladesh. </p>
            <p>We specialize in interior design of residences, commercial spaces, restaurants, hotels,
                hospitals, clinics, and our portfolio spans several sectors, including medical and health,
                travel and leisure, culture and business.</p>
            <p>Our practice of interior design is a collaborative process with our clients. Where brands are
                concerned it is important to us to understand the philosophy of the brand in order to
                incorporate that into the design by finding the ideal compromise between the brand and the
                wishes of the client.</p>
            <p>We also offer purchasing services for turn-key jobs, handling specifications and cost
                estimations, controlling quality, managing shipping and supervising the entire process from
                manufacture to site installation.</p>
        </div>
    </div>
</div>
</section>

<section class="ftco-section ftco-animate">
<div class="container">
    <div class="row justify-content-center mb-5 pb-3">
        <div class="col-md-7 heading-section ftco-animate text-center">
            <h2 class="mb-4">Our Services</h2>
            <p class="flip"><span class="deg1"></span><span class="deg2"></span><span class="deg3"></span></p>
            <p class="mt-5">Design Associates believes that truly good interior design is an art form. Our
                interior design team has been trained in various aspects of design, art and architecture and can
                work with a variety of design and interior styles.</p>
        </div>
    </div>
</div>
<div class="container-wrap">
    <div class="row no-gutters d-flex">
        <div class="col-md-4 d-flex ftco-animate">
            <div class="services-wrap d-flex">
                <a href="portfolio/index.html" class="img"
                    style="background-image: url({{ asset('frontend') }}/wp-content/uploads/2019/04/service_imgs-min.jpg);"></a>
                <div class="text p-4">
                    <h3>Residence Interior</h3>
                    <p>*<br />
                        *<br />
                        *</p>
                </div>
            </div>
        </div>
        <div class="col-md-4 d-flex ftco-animate">
            <div class="services-wrap d-flex">
                <a href="portfolio/index.html" class="img"
                    style="background-image: url({{ asset('frontend') }}/wp-content/uploads/2019/04/service_imgs-min.jpg);"></a>
                <div class="text p-4">
                    <h3>Office Interior</h3>
                    <p>*<br />
                        *<br />
                        *</p>
                </div>
            </div>
        </div>
        <div class="col-md-4 d-flex ftco-animate">
            <div class="services-wrap d-flex">
                <a href="portfolio/index.html" class="img"
                    style="background-image: url({{ asset('frontend') }}/wp-content/uploads/2019/04/service_imgs-min.jpg);"></a>
                <div class="text p-4">
                    <h3>ATM Booth Interior</h3>
                    <p>*<br />
                        *<br />
                        *</p>
                </div>
            </div>
        </div>
        <div class="col-md-4 d-flex ftco-animate">
            <div class="services-wrap d-flex">
                <a href="portfolio/index.html" class="img order-md-last"
                    style="background-image: url({{ asset('frontend') }}/wp-content/uploads/2019/04/service_imgs-min.jpg);"></a>
                <div class="text p-4">
                    <h3>Restaurant Interior</h3>
                    <p>*<br />
                        *<br />
                        *</p>
                </div>
            </div>
        </div>
        <div class="col-md-4 d-flex ftco-animate">
            <div class="services-wrap d-flex">
                <a href="portfolio/index.html" class="img order-md-last"
                    style="background-image: url({{ asset('frontend') }}/wp-content/uploads/2019/04/service_imgs-min.jpg);"></a>
                <div class="text p-4">
                    <h3>Hotel Interior</h3>
                    <p>*<br />
                        *<br />
                        *</p>
                </div>
            </div>
        </div>
        <div class="col-md-4 d-flex ftco-animate">
            <div class="services-wrap d-flex">
                <a href="portfolio/index.html" class="img order-md-last"
                    style="background-image: url({{ asset('frontend') }}/wp-content/uploads/2019/04/service_imgs-min.jpg);"></a>
                <div class="text p-4">
                    <h3>Retail Shop Interior</h3>
                    <p>*<br />
                        *<br />
                        *</p>
                </div>
            </div>
        </div>
    </div>
</div>
</section>
<section class="ftco-section ftco-discount img ftco-animate"
style="background-image: url({{ asset('frontend') }}/wp-content/themes/nymph/images/bg_4.jpg);" data-stellar-background-ratio="0.5">
<div class="overlay"></div>
<div class="container">
    <div class="row justify-content-center" data-scrollax-parent="true">
        <div class="col-md-7 text-center discount ftco-animate"
            data-scrollax=" properties: { translateY: '-30%'}">
            <h3>Corporate</h3>
            <h2 class="mb-4">Office Furniture Catalogue</h2>
            <p class="mb-4">Design Associates is relentlessly trying with a vision to provide quality products
                in affordable price and absolute services towards its valued customers, even after sales. We
                believe that this service will further enhance Design Associates as a trusted name of interior
                design companies in Dhaka.</p>
            <p class="mb-4">You can choose any furniture from our catalogue and order it via phone. Our
                representative will deliver the product at your office.</p>
            <a href="catalogue.pdf" class="btn btn-primary px-4 py-3" target="_blank">Catalogue</a>
        </div>
    </div>
</div>
</section>
<section class="ftco-section ftco-animate">
<div class="container">
    <div class="row justify-content-center mb-5 pb-3">
        <div class="col-md-7 heading-section ftco-animate text-center">
            <h2 class="mb-4">Our Clients</h2>
            <p class="flip"><span class="deg1"></span><span class="deg2"></span><span class="deg3"></span></p>
            <p class="mt-5">Our clients are the life-source of our business. We believe that integrity in client
                dealings is an indisputable prerequisite for a successful and sustained business relationship.
                We work with organizations of all shapes and sizes across all industries. Below you will find a
                sample of our current clients.</p>
        </div>
    </div>
</div>
<div class="container-wrap">
    <div class="ftco-animate">
        <div id="client">
            <div class="viewport">
                    <ul class="overview" style="width: 3750px; left: -1533.34px;">
                        @foreach ($clients as $client)
                            <li><img src="{{ asset('uploads/client') }}/{{ $client->image }}" alt="Noman Group" title="Noman Group"></li>
                            <li><img src="{{ asset('uploads/client') }}/{{ $client->image }}"></li>
                            <li><img src="{{ asset('uploads/client') }}/{{ $client->image }}" alt="Philips Lighting India Ltd." title="Philips Lighting India Ltd."></li>
                            <li><img src="{{ asset('uploads/client') }}/{{ $client->image }}" alt="PEB Steel Alliance L.T.D" title="PEB Steel Alliance L.T.D"></li>
                        @endforeach


                </ul>
            </div>
        </div>
    </div>
</div>
</section>

@endsection

