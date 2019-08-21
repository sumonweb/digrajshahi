

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
												OTP (One Time Password)
											</div>
											<div class="card-body">
												{!! Form::open(['method'=>'GET', 'action'=>'ContactsController@matchOtpInfo', 'class'=>'form-horizontal']) !!}
													<div class="form-group row">
														<label for="otp" class="col-sm-5 col-form-label">OTP (One Time Password) </label>
														<div class="col-sm-7">
															<input type="text" class="form-control" id="otp" name="otp" required>
															<small id="emailHelp" class="form-text text-info ">আপনার মোবাইল নম্বরে একটি OTP (One Time Password) পাঠানো হয়েছে, সেটি প্রদান করুন</small>
														</div>
													</div>
													<div class="form-group row">
														<div class="col-sm-12">
															<button class="btn btn-primary pull-right">সেন্ড করুন</button>
														</div>
													</div>
												{!! Form::close() !!}
											</div>
										</div>
									</div>
									<div class="flash-message" style="margin-top: 50px;">
										@foreach (['danger', 'warning', 'success', 'info'] as $msg)
											@if(Session::has('alert-' . $msg))

												<p class="alert alert-{{ $msg }}">{{ Session::get('alert-' . $msg) }} <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a></p>
											@endif
										@endforeach
									</div> <!-- end .flash-message -->
								</div>
							</div>
						</div>
					</div>
				</div>







			</div>

		</div>
	</div>


@include('frontend.layouts.partial.footer')

