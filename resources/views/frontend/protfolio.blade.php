@extends('frontend.layout.app')

@section('content')
    <div class="site-header--placeholder"></div>
    <section class="ftco-section ftco-animate">
        <div class="container">
            <div class="content">
                <h2 class="title">Portfolio</h2>
                <p id="brcrumbs"><span><span><a href="../index.html">Home</a> » <span class="breadcrumb_last"
                                aria-current="page">Portfolio</span></span></span></p>
                <div class="row d-flex">
                    @foreach ($portfolios as $portfolio)
                    <div class="col-md-4 d-flex ftco-animate">
                        <div class="blog-entry align-self-stretch">
                            <figure class="effect-bubba">
                                <img src="{{ asset('uploads/portfolio') }}/{{ $portfolio->image }}" alt="Mujib Corner"
                                    width="360" height="360" />
                                <figcaption>
                                    <h2 class="title">{{ $portfolio->name }}</h2>
                                    <p>{{ $portfolio->title }}</p>
                                    <a href="{{ route('details.portfolio', $portfolio->id) }}">View more</a>
                                </figcaption>
                            </figure>
                        </div>
                    </div>
                    @endforeach
                </div>
                <div class="row mt-5 ftco-animate">

                </div>
            </div>
        </div>
    </section>
@endsection
