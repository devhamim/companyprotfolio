@extends('frontend.layout.app')
@section('content')
    <div class="site-header--placeholder"></div>
    <section class="ftco-section contact-section ftco-animate">
        <div class="container">
            <div class="content">
                <h2 class="title mb-5">Contact</h2>
                <div class="row block-9">
                    <div class="col-md-4 col-md-4a contact-info ftco-animate">
                        <div class="row">
                            <div class="col-md-12 mb-4">
                                <h4>Address</h4>
                            </div>
                            <div class="col-md-12 mb-3">
                                <span>Design Associates</span><br>
                                {{ $setting->first()->address }}
                            </div>
                            <div class="col-md-12 mb-3">
                                <span>Phone:</span> <a href="tel:{{ $setting->first()->number }}">{{ $setting->first()->number }}</a>
                            </div>
                            <div class="col-md-12 mb-3">
                                <span>Email:</span> <a
                                    href="mailto:{{ $setting->first()->email }}">{{ $setting->first()->email }}</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-1a"></div>
                    <div class="col-md-6 row-gap ftco-animate">
                        <form method="POST" action="{{ route('customerMessage.store') }}" class="contact-form" autocomplete="off">
                            @csrf
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <input type="text" name="name" value="{{ old('name') }}" class="form-control"
                                            placeholder="Your Name">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <input type="text" name="email" value="{{ old('email') }}" class="form-control"
                                            placeholder="Your Email">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <input type="text" name="phone" value="{{ old('phone') }}" class="form-control" placeholder="Subject"
                                    value="">
                            </div>
                            <div class="form-group">
                                <input type="text" name="subject" value="{{ old('subject') }}" class="form-control"
                                    placeholder="Subject">
                            </div>
                            <div class="form-group">
                                <textarea name="message" cols="30" rows="7" class="form-control"
                                    placeholder="Message">{{ old('message') }}</textarea>
                            </div>
                            <div class="form-group">
                                <input type="hidden" name="submitted" value="1">
                            </div>
                            <div class="form-group">
                                <input type="submit" name="button" value="Send Message"
                                    class="btn btn-primary py-3 px-5">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
