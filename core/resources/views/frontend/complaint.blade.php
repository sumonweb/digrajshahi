

@include('frontend.layouts.partial.head')
@include('frontend.layouts.partial.header')

<div class="wrapper mtm-25" style="margin-top: 50px;">

	<script type="text/javascript">
        $(window).on('load',function(){
            $('#myModal').modal('show');
        });
	</script>


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
												অনলাইনে অভিযোগ করুন
											</div>
											{{--<div class="card-body">--}}
												{{--<p class="card-text">প্রথমেই বলে রাখি আপনার যে কোন সমস্যায় ট্রিপল নাইনে কল করুন অথবা আপনার নিকটস্থ থানা বা পুলিশ ফাঁড়িতে যোগাযোগ করুন। যদি সেখানে সাহায্য না পান, শুধুমাত্র সে ক্ষেত্রে অনলাইনের মাধ্যমে অভিযোগ জানাতে পারেন। অভিযোগকারীকে  অবশ্যই তার নিজের নাম ঠিকানা এবং মোবাইল নম্বর প্রদান করতে হবে।</p>--}}
												{{--<p class="card-text"><b>অভিযোগ করার নিয়ম: </b>--}}
													{{--অভিযোগ করার সময় সতর্কতার সাথে ফরমটি পূরণ করুন। পরবর্তী ধাপে আপনার মোবাইল ফোনে একটি ওটিপি কোড (ওয়ান টাইম পাসওয়ার্ড) পাঠানো হবে,  সেই কোডটি প্রদান করুন এবং অভিযোগ জমা দিন।</p>--}}
												{{--<ul>--}}
													{{--<li class="font-weight-bold text-info">১. প্রথমে আপনার জাতীয় পরিচয় পত্র নম্বর এবং মোবাইল নম্বর প্রদান করুন এবং পরবর্তী ধাপে ক্লিক  করুন।</li>--}}
													{{--<li class="font-weight-bold text-info">২. আপনার মোবাইল নম্বরে একটি OTP (One Time Password) পাঠানো হবে।সেটি প্রদান করুন এবং পরবর্তী ধাপে ক্লিক  করুন।</li>--}}
													{{--<li class="font-weight-bold text-info">৩.  এবার অভিযোগ ফরমটি পুরন করুন এবং অভিযোগ সম্পন্ন করুন।</li>--}}
												{{--</ul>--}}
											</div>
											<div class="card-body">
												{!! Form::open(['method'=>'POST', 'action'=>'ContactsController@save', 'class'=>'contact-form']) !!}
												<div class="row">
													<input type="hidden" name="contact_type" value="complaint">
													<div class="col-md-6">
														<div class="form-group label-floating">
															<label for="name" class="control-label" style="font-size:14px; color:#4d66a4;">আপনার নাম*</label><br/>
															<input id="name" type="text" class="form-control" name="person_name">
														</div>
														@include('admin.includes.form-errors', ['field'=>'person_name'])
													</div>
													<div class="col-md-6">
														<div class="form-group label-floating">
															<label for="mobile" class="control-label" style="font-size:14px; color:#4d66a4;">আপনার মোবাইল নম্বর*</label><br/>
															<input type="number" class="form-control" name="mobile" id="mobile">
														</div>
														@include('admin.includes.form-errors', ['field'=>'mobile'])
													</div>
													<div class="col-md-6">
														<div class="form-group label-floating">
															<label for="nid" class="control-label" style="font-size:14px; color:#4d66a4;">জাতীয় পরিচয় পত্র নম্বর</label><br/>
															<input type="text" class="form-control" name="nid" id="nid">
														</div>
													</div>
													<div class="col-md-6">
														<div class="form-group label-floating">
															<label for="email" class="control-label" style="font-size:14px; color:#4d66a4;">আপনার ইমেইল</label><br/>
															<input type="email" class="form-control" name="email" id="email">
														</div>
													</div>
													<div class="col-md-12">
														<div class="form-group label-floating">
															<label for="address" class="control-label" style="font-size:14px; color:#4d66a4;">আপনার ঠিকানা*</label><br/>
															<input type="text" class="form-control" name="address" id="address">
														</div>
														@include('admin.includes.form-errors', ['field'=>'address'])
													</div>
													<div class="col-md-12">
														<div class="form-group label-floating">
															<label for="receiver" class="control-label" style="font-size:14px; color:#4d66a4;">অভিযোগ গ্রহণকারী</label><br/>
															<select id="receiver" class="form-control" name="receiver">
																<option>নির্বাচন করুন</option>
																<option value="ডিআইজি">ডিআইজি, রাজশাহী রেঞ্জ</option>
																<option value="অতিরিক্ত ডিআইজি">অতিরিক্ত ডিআইজি, রাজশাহী রেঞ্জ</option>
																<option value="এসপি রাজশাহী">এসপি রাজশাহী</option>
																<option value="এসপি চাঁপাইনবাবগঞ্জ">এসপি চাঁপাইনবাবগঞ্জ</option>
																<option value="এসপি নাটোর">এসপি নাটোর</option>
																<option value="এসপি বগুড়া">এসপি বগুড়া</option>
																<option value="এসপি নওগাঁ">এসপি নওগাঁ</option>
																<option value="এসপি পাবনা">এসপি পাবনা</option>
																<option value="এসপি সিরাজগঞ্জ">এসপি সিরাজগঞ্জ</option>
																<option value="এসপি জয়পুরহাট">এসপি জয়পুরহাট</option>

															</select>
														</div>
													</div>
												</div>

												<div class="form-group label-floating">
													<label for="complaint" class="control-label" style="font-size:14px; color:#4d66a4;">আপনার অভিযোগ *</label><br />
													<textarea id="complaint" class="form-control" rows="4" name="message"></textarea>
													@include('admin.includes.form-errors', ['field'=>'message'])
												</div>

												<div class="row" >
													<div class="col-md-4 col-md-offset-4 text-center" style="margin:0 auto; text-align:center;">
														<button class="btn" type="submit" style="background-color:#4d66a4; color:#fff;">
															পরবর্তী ধাপ
														</button>
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


	<div id="complaintModal" class="modal modal-cus-bg fade" role="dialog">
		<div class="modal-dialog modal-lg">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">অনলাইনে অভিযোগ দিন</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>

				</div>
				<div class="modal-body">
					<p>প্রথমেই বলে রাখি আপনার যে কোন সমস্যায় ট্রিপল নাইনে কল করুন অথবা আপনার নিকটস্থ থানা বা পুলিশ ফাঁড়িতে যোগাযোগ করুন। যদি সেখানে সাহায্য না পান, শুধুমাত্র সে ক্ষেত্রে অনলাইনের মাধ্যমে অভিযোগ জানাতে পারেন। অভিযোগকারীকে  অবশ্যই তার নিজের নাম ঠিকানা এবং মোবাইল নম্বর প্রদান করতে হবে।</p>
					<p><b>অভিযোগ করার নিয়মঃ</b> অভিযোগ করার সময় সতর্কতার সাথে ফরমটি পূরণ করুন। পরবর্তী ধাপে আপনার মোবাইল ফোনে একটি ওটিপি কোড (ওয়ান টাইম পাসওয়ার্ড) পাঠানো হবে,  সেই কোডটি প্রদান করুন এবং অভিযোগ জমা দিন।</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal">অভিযোগ ফরম</button>
				</div>
			</div>

		</div>
	</div>

@include('frontend.layouts.partial.footer')

