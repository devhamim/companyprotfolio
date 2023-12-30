<footer class="ftco-footer ftco-section img ftco-animate">
    <div class="overlay"></div>
    <div class="container">
        <div class="row mb-5">
            <div class="col-md-5">
                <div class="ftco-footer-widget mb-4 ftco-animate">
                    <h2 class="ftco-heading-2">About Us</h2>

                        @if($setting->first()->about != null)
                            <p class="ftco-animate">{{ $setting->first()->about }}</p>
                        @endif
                    <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
                        <li class="ftco-animate"><a href="{{ $setting->first()->facebook }}"><span
                                    class="fa fa-facebook"></span></a></li>
                        <li class="ftco-animate"><a href="{{ $setting->first()->twitter }}"><span
                                    class="fa fa-twitter"></span></a></li>
                        <li class="ftco-animate"><a href="{{ $setting->first()->instagram }}"><span
                                    class="fa fa-instagram"></span></a></li>
                        <li class="ftco-animate"><a href="{{ $setting->first()->linkedin }}"><span
                                    class="fa fa-linkedin"></span></a></li>

                    </ul>
                </div>
            </div>

            <div class="col-md-3">
                <div class="ftco-footer-widget mb-4 ml-md-4 ftco-animate">
                    <h2 class="ftco-heading-2">Services</h2>
                    <ul class="list-unstyled">
                        <li><a href="{{ route('about_us') }}">About us</a></li>
                            <li><a href="{{ route('our.privacy.policy') }}">Privacy policy</a></li>
                            <li><a href="{{ route('our.blog') }}">Blog</a></li>
                            <li><a href="{{ route('our.privacy.policy') }}">Privacy policy</a></li>
                            <li><a href="{{ route('contect') }}">Contact us</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md-4">
                <div class="ftco-footer-widget mb-4 ftco-animate">
                    <h2 class="ftco-heading-2">Have a Questions?</h2>
                    <div class="block-23 mb-3">
                        <ul>
                            @if($setting->first()->address != null)
                                <li class="ftco-animate">{{ $setting->first()->address }} </li>
                            @endif
                            @if($setting->first()->number != null)
                                <li class="ftco-animate">{{ $setting->first()->number }} </li>
                            @endif
                            @if($setting->first()->email != null)
                                <li class="ftco-animate">{{ $setting->first()->email }}</li>
                            @endif
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-12 text-center">
            @if($setting->first()->footer != null)
                <p style="max-height: 10%;">{{ $setting->first()->footer }}</p>
            @endif
        </div>
    </div>
</footer>
