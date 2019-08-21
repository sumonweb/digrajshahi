@include('frontend.layouts.partial.head')
@include('frontend.layouts.partial.header')

   
        
<div class="container">
<div class="row"> 
<div class="col-lg-3">
    @include('frontend.layouts.partial.sidebar')
</div>
<div class="col-lg-9">
   <div class="section contact-uss">
        <h4 class="titlebar services">
            <a href="#">Contacts</a>
        </h4>
    </div>

	<div class="section accordian-contact">
		<div class="accordion" id="firstLabel">

			<!-- Rajshahi Range -->
			<div class="card">
				<div class="card-header" id="headingRajshahiRange">
					<h2 class="mb-0">
						<button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseRajshahiRange" aria-expanded="false" aria-controls="collapseRajshahiRange">
							Rajshahi Range
						</button>
					</h2>
				</div>
				<div id="collapseRajshahiRange" class="collapse" aria-labelledby="headingRajshahiRange" data-parent="#firstLabel">
					<div class="card-body">
						<div id="contacts" class="panel-collapse collapse show" aria-expanded="true" style="">
							<ul class="list-group pull-down" id="contact-list">

								@if($dig_contacts)
									@foreach($dig_contacts as $contacts)

										<li class="list-group-item">
											<div class="row w-100">
												<div class="col-12 col-sm-6 col-md-1 px-0">
                              
												</div>
												<div class="col-12 col-sm-6 col-md-10 text-center text-sm-left">
													<!-- <span class="fa fa-mobile fa-2x text-success float-right pulse" title="online now"></span> -->
													<label class="name lead" style="color:#336699; font-weight:400;"> {{ $contacts->designation }}</label>

													@if(!empty($contacts->mobile))
														<br>
														<span class="fa fa-mobile fa-fw text-muted" data-toggle="tooltip" title="" data-original-title="{{ $contacts->mobile }}"></span>
														<span class="text-muted ">{{ $contacts->mobile }}   </span>
													@endif
													@if(!empty($contacts->phone))
														<br>
														<span class="fa fa-phone fa-fw text-muted" data-toggle="tooltip" title="" data-original-title="{{ $contacts->phone }}"></span>
														<span class="text-muted ">{{ $contacts->phone }}   </span>
													@endif
													@if(!empty($contacts->email))
														<br>
														<span class="fa fa-envelope fa-fw text-muted" data-toggle="tooltip" data-original-title="" title=""></span>
														<span class="text-muted  text-truncate">{{ $contacts->email }}</span>
													@endif
												</div>
											</div>
										</li>

									@endforeach
								@endif

							</ul>
							<!--/contacts list-->
						</div>
					</div>
				</div>
			</div>


			@foreach($districts as $district)
			<!-- District Police -->
			<div class="card">
				<div class="card-header" id="headDis{{ $district->id }}">
					<h2 class="mb-0">
						<button class="btn btn-link" type="button" data-toggle="collapse" data-target="#colDis{{ $district->id }}" aria-expanded="true" aria-controls="colDis{{ $district->id }}">
							{{ $district->id=='9' || $district->id=='16' || $district->id=='17' || $district->id=='18' ? $district->name_english : 'District Police '.$district->name_english}}
						</button>
					</h2>
				</div>



				<div id="colDis{{ $district->id }}" class="collapse"
				     aria-labelledby="headDis{{ $district->id }}"
				     data-parent="#firstLabel">
								<div class="card-body">
									<div class="accordion" id="district{{  $str = str_replace(' ','',$district->name_english) }}">

										<!-- SP Office -->
										<div class="card">
											<div class="card-header" id="headSpOffice{{ $district->id }}">
												<h2 class="mb-0">
													<button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#colSpOffice{{ $district->id }}" aria-expanded="false"
													        aria-controls="colSpOffice{{$district->id}}">
														এসপি অফিস 
													</button>
												</h2>
											</div>

											<div id="colSpOffice{{$district->id}}" class="collapse" aria-labelledby="headSpOffice{{ $district->id }}" data-parent="#district{{ str_replace(' ','',$district->name_english) }}">
												<div class="card-body">
													<div id="contacts" class="panel-collapse collapse show" aria-expanded="true" style="">
														<ul class="list-group pull-down" id="contact-list">
															@foreach($district->contacts as $dis_contacts)
															<li class="list-group-item">
																<div class="row w-100">
																	<div class="col-12 col-sm-6 col-md-1 px-0">

																	</div>
																	<div class="col-12 col-sm-6 col-md-10 text-center text-sm-left">
																		<!-- <span class="fa fa-mobile fa-2x text-success float-right pulse" title="online now"></span> -->
																		<label class="name lead" style="color:#336699; font-weight:400;"> {{ $dis_contacts->designation }}</label>

																		@if(!empty($dis_contacts->mobile))
																			<br>
																			<span class="fa fa-mobile fa-fw text-muted" data-toggle="tooltip" title="" data-original-title="{{ $dis_contacts->mobile }}"></span>
																			<span class="text-muted ">{{ $dis_contacts->mobile }}   </span>
																		@endif
																		@if(!empty($dis_contacts->phone))
																			<br>
																			<span class="fa fa-phone fa-fw text-muted" data-toggle="tooltip" title="" data-original-title="{{ $dis_contacts->phone }}"></span>
																			<span class="text-muted ">{{ $dis_contacts->phone }}   </span>
																		@endif
																		@if(!empty($dis_contacts->email))
																			<br>
																			<span class="fa fa-envelope fa-fw text-muted" data-toggle="tooltip" data-original-title="{{ $dis_contacts->email }}"></span>
																			<span class="text-muted text-truncate">{{ $dis_contacts->email }}</span>
																		@endif
																	</div>
																</div>
															</li>
															@endforeach
														</ul>
														<!--/contacts list-->
													</div>
												</div>
											</div>
										</div> <!--/SP office contact ends here-->

										@foreach($district->thanas as $thana)
										<div class="card">
											<div class="card-header" id="head{{ $thana->id }}">
												<h2 class="mb-0">
													<button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#col{{ $thana->id }}" aria-expanded="false" aria-controls="col{{ $thana->id }}">
														{{ $thana->name }}
													</button>
												</h2>
											</div>
											<div id="col{{ $thana->id }}" class="collapse" aria-labelledby="head{{ $thana->id }}" data-parent="#district{{ str_replace(' ', '', $district->name_english) }}">
												<div class="card-body">
													<!--Thana level contact starts here-->
													<div id="contacts" class="panel-collapse collapse show" aria-expanded="true" style="">
														<ul class="list-group pull-down" id="contact-list">
															@foreach($thana->contacts as $thana_contacts)
																<li class="list-group-item">
																	<div class="row w-100">
																		<div class="col-12 col-sm-6 col-md-1 px-0">

																		</div>
																		<div class="col-12 col-sm-6 col-md-10 text-center text-sm-left">
																			<!-- <span class="fa fa-mobile fa-2x text-success float-right pulse" title="online now"></span> -->
																			<label class="name lead" style="color:#336699; font-weight:400;"> {{ $thana_contacts->designation }}</label>

																			@if(!empty($thana_contacts->mobile))
																				<br>
																				<span class="fa fa-mobile fa-fw text-muted" data-toggle="tooltip" title="" data-original-title="{{ $thana_contacts->mobile }}"></span>
																				<span class="text-muted ">{{ $thana_contacts->mobile }}   </span>
																			@endif
																			@if(!empty($thana_contacts->phone))
																				<br>
																				<span class="fa fa-phone fa-fw text-muted" data-toggle="tooltip" title="" data-original-title="{{ $thana_contacts->phone }}"></span>
																				<span class="text-muted">{{ $thana_contacts->phone }}   </span>
																			@endif
																			@if(!empty($thana_contacts->email))
																				<br>
																				<span class="fa fa-envelope fa-fw text-muted" data-toggle="tooltip" data-original-title="{{ $thana_contacts->email }}"></span>
																				<span class="text-muted text-truncate">{{ $thana_contacts->email }}</span>
																			@endif
																		</div>
																	</div>
																</li>
															@endforeach
														</ul>
														<!--/contacts list-->
													</div>
													<!--Thana level contact ends here-->
												</div>
											</div>
										</div> <!--/Thana card ends here-->
										@endforeach

						</div>

					</div>
				</div>
			</div>
			@endforeach
		</div>
	</div>
	<div class="section landing-section">
		<div class="row">
			<div class="col-md-8 " style="margin:0 auto; text-align:center;">
				<h2 class="text-center title" style="font-weight:bold; color:#4d66a4">Contact us</h2>
				{{--<h4 class="text-center description" style="font-weight:normal; font-size:19px;">If you or someone else is in immediate danger, or if the crime is happening right now. If you are deaf, hard-of-hearing or speech impaired, you can contact us using your phone or send us messages by email.</h4>--}}

				{!! Form::open(['method'=>'POST', 'action'=>'ContactsController@save', 'class'=>'contact-form']) !!}
				<div class="row">
					<input type="hidden" name="contact_type" value="contact">
					<div class="col-md-6">
						<div class="form-group label-floating">
							<label class="control-label" style="font-size:14px; color:#4d66a4;">Your Name*</label><br/>
							<input type="text" class="form-control" name="person_name">
						</div>
						@include('admin.includes.form-errors', ['field'=>'person_name'])
					</div>
					<div class="col-md-6">
						<div class="form-group label-floating">
							<label class="control-label" style="font-size:14px; color:#4d66a4;">Your Phone/Mobile*</label><br/>
							<input type="text" class="form-control" name="mobile">
						</div>
						@include('admin.includes.form-errors', ['field'=>'mobile'])
					</div>
					<div class="col-md-12">
						<div class="form-group label-floating">
							<label class="control-label" style="font-size:14px; color:#4d66a4;">Email</label><br/>
							<input type="email" class="form-control" name="email">
						</div>
					</div>
				</div>

				<div class="form-group label-floating">
					<label class="control-label" style="font-size:14px; color:#4d66a4;">Message</label><br />
					<textarea class="form-control" rows="4" name="message"></textarea>
					@include('admin.includes.form-errors', ['field'=>'message'])
				</div>

				<div class="row" >
					<div class="col-md-4 col-md-offset-4 text-center" style="margin:0 auto; text-align:center;">
						<button class="btn" type="submit" style="background-color:#4d66a4; color:#fff;">
							Send Message
						</button>
					</div>
				</div>
				{!! Form::close() !!}

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


@include('frontend.layouts.partial.footer')


