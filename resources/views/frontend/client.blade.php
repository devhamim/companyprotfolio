@extends('frontend.layout.app')
@section('content')
<!-- Start main-content -->
<section class="page-title" style="background-image: url({{ asset('frontend') }}/images/background/page-title.jpg);">
	<div class="auto-container">
		<div class="title-outer">
			<h1 class="title">Testimonial</h1>
			<ul class="page-breadcrumb">
				<li><a href="{{ url('/') }}">Home</a></li>
				<li>Testimonial</li>
			</ul>
		</div>
	</div>
</section>
<!-- end main-content -->

<!-- Testimonial Section Two -->
<section class="testimonial-section-two">
	<div class="auto-container">

		<div class="carousel-outer">
			<div class="testimonial-carousel-two owl-carousel default-navs">
				<!-- Testimonial Block -->
				<div class="testimonial-block-two">
					<div class="inner-box">
						<div class="content-box">
							<div class="text">To review means to look back over something for evaluation or memory. It’s always a joy to hear that the work I do has positively impacted our clients.</div>
						</div>
						<div class="info-box">
							<figure class="thumb"><img src="{{ asset('frontend') }}/images/resource/testi-thumb.png" alt=""></figure>
							<div class="rating">
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
							</div>
							<h5 class="name">David Coper</h5>
							<span class="designation">Happy Customer</span>
						</div>
					</div>
				</div>

				<!-- Testimonial Block -->
				<div class="testimonial-block-two">
					<div class="inner-box">
						<div class="content-box">
							<div class="text">To review means to look back over something for evaluation or memory. It’s always a joy to hear that the work I do has positively impacted our clients.</div>
						</div>
						<div class="info-box">
							<figure class="thumb"><img src="{{ asset('frontend') }}/images/resource/testi-thumb-2.png" alt=""></figure>
							<div class="rating">
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
							</div>
							<h5 class="name">David Coper</h5>
							<span class="designation">Happy Customer</span>
						</div>
					</div>
				</div>

				<!-- Testimonial Block -->
				<div class="testimonial-block-two">
					<div class="inner-box">
						<div class="content-box">
							<div class="text">To review means to look back over something for evaluation or memory. It’s always a joy to hear that the work I do has positively impacted our clients.</div>
						</div>
						<div class="info-box">
							<figure class="thumb"><img src="{{ asset('frontend') }}/images/resource/testi-thumb-3.png" alt=""></figure>
							<div class="rating">
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
							</div>
							<h5 class="name">David Coper</h5>
							<span class="designation">Happy Customer</span>
						</div>
					</div>
				</div>

			</div>
		</div>

	</div>
</section>
<!-- End Testimonial Section -->
@endsection
