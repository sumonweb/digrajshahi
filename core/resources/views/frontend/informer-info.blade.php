

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
												অভিযোগকারীর তথ্য
											</div>
											<div class="card-body">
												{!! Form::open(['method'=>'POST', 'action'=>'OtpController@store', 'class'=>'form-horizontal']) !!}
												<input type="hidden" name="form_type" value="information">
													<div class="form-group row">
														<label for="nid" class="col-sm-5 col-form-label">জাতীয় পরিচয় পত্র নম্বর *</label>
														<div class="col-sm-7">
															<input type="text" class="form-control" id="nid" name="nid" placeholder="জাতীয় পরিচয় পত্র নম্বর" required>
														</div>
														<div class="col-sm-12">
															@include('admin.includes.form-errors', ['field'=>'nid'])
														</div>
													</div>
													<div class="form-group row">
														<label for="inputPassword" class="col-sm-5 col-form-label">মোবাইল নম্বর *</label>
														<div class="col-sm-7">
															<input type="text" class="form-control" placeholder="01xxxxxxxxx" name="mobile" required>
														</div>
														<div class="col-sm-12">
															@include('admin.includes.form-errors', ['field'=>'mobile'])
														</div>
													</div>
													<div class="form-group row">
														<div class="col-sm-12">
															<button type="submit" class="btn btn-primary pull-right">পরবর্তী ধাপ</button>
														</div>
													</div>
												{!! Form::close() !!}
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

