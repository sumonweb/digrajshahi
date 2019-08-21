@include('frontend.layouts.partial.head')
@include('frontend.layouts.partial.header')

<div class="wrapper mtm-25">

	<div class="header header-filter" style="background-image: url({{asset('assets/uploads/districtCoverImage/'.$district->cover_image)}})">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h1 class="title">
						{{ $district->id == '9' || $district->id == '16' || $district->id == '17' || $district->id == '18' ? $district->name_english : 'District Police '.$district->name_english }}
					</h1>
					<br />
					<a href="{{ route('photo-gallery') }}" class="btn btn-danger btn-raised btn-lg" style="padding:11px 17px;">Watch more photos</a>
				</div>
			</div>
		</div>
	</div>


	<div class="main main-raised">
		<div class="container">
			<div class=" section-landing">
				<div class=" section-tabs">
					<div class="container">
						<div id="nav-tabs">
							<div class="row">
								<div class="col-md-3" style="margin-top:16px;">
									<div class="team-player">
										<img src="{{ asset('assets/uploads/sp/'.$district->sp_photo) }}" alt="Image of SP" class="img-raised img-circle">
										<h4 class="title" style="font-size:16px; background-color:#5774a4; margin-top:7px; color:#fff; padding:15px 0 15px 0; text-align:center;">{{$district->sp_name}} (SP) <br />
										</h4>
									</div>
								</div>
								<div class="col-md-9">
									<!-- Tabs with icons on Card -->
									<div class="card card-nav-tabs cd-info">
										<div class="card-header " style="background: linear-gradient(to right,#131b43 ,#5774a4, #7a97c9);">
											<!-- colors: "header-primary", "header-info", "header-success", "header-warning", "header-danger" -->
											<div class="nav-tabs-navigation">
												<div class="nav-tabs-wrapper">
													<ul class="nav nav-tabs" data-tabs="tabs">
														<li class="nav-item">
															<a class="nav-link active" href="#messages" data-toggle="tab" style="font-size:14px;">
																Message of SP
															</a>
														</li>
														<li class="nav-item">
															<a class="nav-link " href="#profile" data-toggle="tab" style="font-size:14px;">
																About
															</a>
														</li>
														<li class="nav-item">
															<a class="nav-link" href="#notice" data-toggle="tab" style="font-size:14px;">
																Notice Board
															</a>
														</li>
														<li class="nav-item">
															<a class="nav-link" href="#noc" data-toggle="tab" style="font-size:14px;">
																NOC
															</a>
														</li>
														<li class="nav-item">
															<a class="nav-link" href="#contact" data-toggle="tab" style="font-size:14px;">
																Contact
															</a>
														</li>
                                          
													</ul>
												</div>
											</div>
										</div>
										<div class="card-body ">
											<div class="tab-content">
												<div class="tab-pane active" id="messages" style="text-align: justify;">
													{{ $district->message }}
												</div>
												<div class="tab-pane " id="profile">
													<div class="scrollable about_raj">
														{!! $district->about_district !!}
													</div>
												</div>
												<div class="tab-pane" id="notice">
                                     
													<section id="what-we-do">
														<div class="container-fluid">
															<div class="scrollable" style="height:257px;">
																@if($notices)
																@foreach($notices as $notice)

																<div class="card" style="margin-top:9px;">
																	<div class="card-block block-2">
																		<h3 class="card-title">{{ $notice->notice_title }}</h3>
																		<p class="card-text">{!! !empty($notice->notice) ? str_limit($notice->notice, 80) : '' !!}</p>
																		<a href="{{ route('notice-details', $notice->id) }}" title="Read more" class="read-more" >Read more<i class="fa fa-angle-double-right ml-2"></i></a>
																	</div>
																</div>

																@endforeach
																@endif
				
															</div>
														</div>
			
													</section>
												</div>
												<div class="tab-pane " id="noc">
													<div class="pgs">
						
														<ul>

                                                        @if($nocs)
                                                            @foreach($nocs as $noc)

															<li>
                                                                <a href="#"><i class="fa fa-arrow-right" aria-hidden="true"></i>{{ str_limit($noc->noc_name, 75) }}</a>
                                                                <a href="#" onclick="VoucherPrint('{{ asset('assets/uploads/noc/'.$noc->noc_img) }}'); return false;" class="myButton" style="float: right;color:#fff;">
                                                                    Print NOC</a>
                                                                <a class="nocd-btn" href="{{ asset('assets/uploads/noc/'.$noc->noc_img) }}" download  style="float: right;color:#fff;">download</a>
                                                            </li>



                                                            @endforeach
                                                        @endif

														</ul>
													</div>
												</div>
												<div class="tab-pane " id="contact">
													<div class="container">
														<div class="section">
															<h4 class="titlebar services">
																<a href="#">Contacts</a>
															</h4>
	               

															<div class="team">
																<div class="row">
																	<div class="container">
   
																		<div class="card card-default" id="card_contacts">
																			<div id="contacts" class="panel-collapse collapse show" aria-expanded="true" style="">
																				<ul class="list-group pull-down" id="contact-list">
																				@if($district_contacts)
																				@foreach($district_contacts as $contacts)
																					<li class="list-group-item">
																						<div class="row w-100">
																							<div class="col-12 col-sm-6 col-md-1 px-0"></div>
																							<div class="col-12 col-sm-6 col-md-10 text-center text-sm-left">
																								<span class="fa fa-mobile fa-2x text-success float-right pulse" title="online now"></span>
																								<label class="name lead" style="color:#336699; font-weight:400;">{{ $contacts->person_name }}</label>
            @if(!empty($contacts->designation))														<br>
			<span class="fa fa-graduation-cap fa-fw text-muted" data-toggle="tooltip" title="" data-original-title="{{$contacts->person_name}}"></span>
			<span class="text-muted">{{ $contacts->designation }}</span>
			@endif

			@if(!empty($contacts->mobile))														<br>
			<span class="fa fa-mobile fa-fw text-muted" data-toggle="tooltip" title="" data-original-title="{{$contacts->mobile}}"></span>
			<span class="text-muted">{{ $contacts->mobile }}</span>
			@endif
																							@if(!empty($contacts->phone))														<br>
			<span class="fa fa-phone fa-fw text-muted" data-toggle="tooltip" title="" data-original-title="{{$contacts->phone}}"></span>
			<span class="text-muted">{{ $contacts->phone }}</span>
																							@endif
																								@if(!empty($contacts->fax))														<br>
																								<span class="fa fa-fax fa-fw text-muted" data-toggle="tooltip" title="" data-original-title="{{$contacts->fax}}"></span>
																								<span class="text-muted">{{ $contacts->fax }}</span>
																								@endif
			@if(!empty($contacts->email))														<br>
			<span class="fa fa-envelope fa-fw text-muted" data-toggle="tooltip" data-original-title="" title=""></span>
			<span class="text-muted text-truncate">{{ $contacts->email }}</span>
			@endif																			</div>
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
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<!-- End Tabs with icons on Card -->
								</div>
                       
                     
							</div>
						</div>
					</div>
				</div>

				@if($district->id == '9' || $district->id == '16' || $district->id == '17' || $district->id == '18')
					{{ '' }}
				@else
				<h4 class="titlebar services">
					<a href="#">{{$district->name}} জেলার অন্তর্ভুক্ত থানাসমূহ</a>
				</h4>

				<div class="row" style="margin:0 auto; text-align:center; margin-left:-15px; margin-right:-15px;">

                    @if($thanas)
                    @foreach($thanas as $thana)

					<div class="col-lg-2 col-md-6 col-sm-6">
						<div style="margin-bottom: 25px;">
							<a href="{{ route('thana', $thana->id) }}" > <h4 class="info-title" style="background-color:#5774a4; font-size:17px; color:#fff; padding:5px 0; margin-bottom:5px;">{{$thana->name}} <br> থানা</h4></a>
							<a href="{{ route('thana', $thana->id) }}"><img src="{{ asset('assets/images/naogaon_map.png') }}" class="img-raised" style="border-top:2px solid #5774a4; "></a>
						</div>
					</div>

                    @endforeach
                    @endif

				</div>

			</div>
	          

			<div class="section">
				<h4 class="titlebar services">
					<a href="#">News</a>
				</h4>
				<div class="team">
					<div class="row">

                        @if($district_news)
                        @foreach($district_news as $news)
						<div class="col-md-6">
							<div class="the_news_group">
								<div class="list thumb_list mb20">
									<ul>
										<li>
											<img class="img img-responsive" src="{{ asset('assets/uploads/news/'.$news->cover_image) }}" alt="" style="float:left;height: 55px;width: 80px;margin-right: 20px;">
											<h3><a target="_blank" href="{{url('news/'.$news->id)}}">
													{{--<img class="thumb_list_img fl" src="{{ asset('assets/uploads/news/'.$news->cover_image) }}">--}}
                                                    {{$news->title}}
                                                </a>
											</h3>
										</li>
									</ul>
								</div>
							</div>
						</div>

                        @endforeach
                        @endif

					</div>
				</div>
			</div>
			@endif
		</div>
	</div>
</div>

<!-- Print Script -->
<script type="text/javascript">
    function VoucherSourcetoPrint(source) {
        console.log(source);
        return "<html><head><script>function step1(){\n" +
            "setTimeout('step2()', 10);}\n" +
            "function step2(){window.print();window.close()}\n" +
            "</scri" + "pt></head><body onload='step1()'>\n" +
            "<img src='" + source + "' /></body></html>";
    }
    function VoucherPrint(source) {
        Pagelink = "about:blank";
        var pwa = window.open(Pagelink, "_new");
        pwa.document.open();
        pwa.document.write(VoucherSourcetoPrint(source));
        pwa.document.close();
    }
</script>
<!-- End Print Script -->

<!-- Print Preview Modal -->
<script>
    // Get the modal
    var modal = document.getElementById('myModal');

    // Get the image and insert it inside the modal - use its "alt" text as a caption
    var img = document.getElementById('myImg');
    var modalImg = document.getElementById("img01");
    var captionText = document.getElementById("caption");
    img.onclick = function(){
        modal.style.display = "block";
        modalImg.src = this.src;
        captionText.innerHTML = this.alt;
    }

    // Get the <span> element that closes the modal
    var span = document.getElementsByClassName("close")[0];

    // When the user clicks on <span> (x), close the modal
    span.onclick = function() {
        modal.style.display = "none";
    }
</script>
<!-- End Print Preview Modal -->

@include('frontend.layouts.partial.footer')

