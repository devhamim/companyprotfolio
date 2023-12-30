@extends('frontend.layout.app')

@section('content')

    <div class="site-header--placeholder"></div>
    <section class="ftco-section ftco-animate">
        <div class="container">
            <div class="content">
                <h2 class="title">Blog</h2>
                <p id="brcrumbs"><span><span><a href="{{ url('/') }}">Home</a> » <span class="breadcrumb_last"
                                aria-current="page">Blog</span></span></span></p>
                <div class="row d-flex">
                    @foreach ($blogs as $blog)
                        <div class="col-md-4 d-flex ftco-animate">
                            <div class="blog-entry align-self-stretch">

                                <a href="{{ route('our.blog.details', $blog->slug) }}"
                                    class="block-20"
                                    style="background-image: url('{{ asset('uploads/blog') }}/{{ $blog->image }}');"></a>
                                <div class="text py-4 d-block">
                                    <div class="meta">
                                        <div><a href="{{ route('our.blog.details', $blog->slug) }}"
                                                class="meta-chat"><span class="fa fa-calendar"></span> {{ $blog->created_at->format('d,M,Y') }}</a>
                                        </div>
                                        <div><a href="{{ asset('frontend') }}/author/designassociates/index.html" class="meta-chat"><span
                                                    class="fa fa-user"></span></a></div>
                                        <div><a href="{{ route('our.blog.details', $blog->slug) }}"
                                                class="meta-chat"><span class="fa fa-edit"></span> </a></div>
                                    </div>
                                    <h3 class="heading mt-2"><a
                                            href="{{ route('our.blog.details', $blog->slug) }}">{{ $blog->title }}</a></h3>
                                    <p><a
                                            href="="{{ route('our.blog.details', $blog->slug) }}">Read
                                            more </a></p>
                                </div>
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
