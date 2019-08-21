

@include('frontend.layouts.partial.head')
@include('frontend.layouts.partial.header')

<div class="wrapper mtm-25" style="margin-top: 50px;">

	{{--<div class="header header-filter">--}}
	{{--<div class="container">--}}
	{{--<div class="row">--}}
	{{--<div class="col-md-12">--}}
	{{--<h1 class="title">Bogra District Police</h1>--}}
	{{--<br />--}}
	{{--<a href="{{ route('photo-gallery') }}" class="btn btn-danger btn-raised btn-lg" style="padding:11px 17px;">Watch more photos</a>--}}
	{{--</div>--}}
	{{--</div>--}}
	{{--</div>--}}
	{{--</div>--}}


	<div class="main main-raised">
		<div class="container">
			<div class=" section-landing">
				<div class=" section-tabs">
					<div class="container">
						<div id="nav-tabs">
							<div class="row">
								<div class="col-lg-3">
									@include('frontend.layouts.partial.sidebar')
								</div>  <!-- End col-lg-3 -->
								<div class="col-md-9">

									<div class="note-complane mt-4">
										<div class="card">
											<div class="card-header">
												অনলাইনে তথ্য প্রদানের নিয়মাবলী
											</div>
											<div class="card-body">
												<p class="card-text">তথ্য প্রদানের সময় সতর্কতার সাথে ফরম পূরণের প্রতিটি ধাপ সম্পন্ন করুন। একটি ধাপে প্রয়োজনীয় তথ্য পূরণ করে পরবর্তী ধাপে প্রবেশ করুন। পরবর্তী ধাপে প্রবেশের সাথে সাথে পূর্ববর্তী ধাপের পূরণকৃত তথ্যসমূহ স্বয়ংক্রিয়ভাবে সিস্টেমে সংরক্ষিত হয়ে যাবে। তথ্য প্রদানের নিয়মাবলী নিচে দেওয়া হলো :- </p>
												<ul>
													<li class="font-weight-bold text-info">১. প্রথমে আপনার জাতীয় পরিচয় পত্র নম্বর এবং মোবাইল নম্বর প্রদান করুন এবং পরবর্তী ধাপে ক্লিক  করুন।</li>
													<li class="font-weight-bold text-info">২. আপনার মোবাইল নম্বরে একটি OTP (One Time Password) পাঠানো হবে।সেটি প্রদান করুন এবং পরবর্তী ধাপে ক্লিক  করুন।</li>
													<li class="font-weight-bold text-info">৩.  এবার অভিযোগ ফরমটি পুরন করুন এবং অভিযোগ সম্পন্ন করুন।</li>
												</ul>
												<a href="{{ route('informer-info') }}" class="btn btn-primary pull-right mt-4">পরবর্তী ধাপ</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


@include('frontend.layouts.partial.footer')

