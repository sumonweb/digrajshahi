
@include('frontend.layouts.partial.head')
@include('frontend.layouts.partial.header')

<div class="mb-2 news-ticker">
    <div class="col-12 bg-white">
        <div class="row">
            <!--Breaking box-->
            <div class="col-3 col-md-3 col-lg-2 pr-0 pl-0">
                <div class="p-2 bg-primary text-center breaking-caret"><span class="font-weight-bold">ব্রেকিং নিউজ</span></div>
            </div>
            <!--end breaking box-->
            <!--Breaking content-->
            <div class="col-9 col-md-9 col-lg-10 pl-md-5 py-2">
                <div class="breaking-box">
                    <div id="carouselbreaking" class="carousel slide" data-ride="carousel">
                        <!--breaking news-->
                        <div class="carousel-inner">
	                        @foreach($ticker as $index=>$tickernews)
                            <!--post-->
                            <div class="carousel-item @if($index == 0) {{ 'active' }} @endif">
                                <a href="#"><span class="position-relative mx-2 badge badge-primary rounded-0"></span></a> <a class="text-dark" href="{{ url('news/'.$tickernews->id) }}" target="_blank">{{ str_limit($tickernews->title, 80) }}</a>
                            </div>
							@endforeach
                        </div>
                        <!--end breaking news-->

                        <!--navigation slider-->
                        <div class="navigation-box p-2 d-none d-sm-block">
                            <!--nav left-->
                            <a class="carousel-control-prev text-primary" href="#carouselbreaking" role="button" data-slide="prev">
                                <i class="fa fa-angle-left" aria-hidden="true"></i>
                                <span class="sr-only">Previous</span>
                            </a>
                            <!--nav right-->
                            <a class="carousel-control-next text-primary" href="#carouselbreaking" role="button" data-slide="next">
                                <i class="fa fa-angle-right" aria-hidden="true"></i>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                        <!--end navigation slider-->
                    </div>
                </div>
            </div>
            <!--end breaking content-->
        </div>
    </div>
</div>

<div class="container"> <!-- Carousel Container -->
    <div class="row">
        <div class="col-lg-12">
            <div id="mainCarouselIndicators" class="carousel slide " data-ride="carousel">           <!-- Start Carousel -->

                <ol class="carousel-indicators">  <!-- Carousel Indicators -->

                    @foreach($sliders as $index=> $slider)

                    <li data-target="#mainCarouselIndicators" data-slide-to="{{ $index }}" class="@if($index == 0) {{ 'active' }} @endif"></li>

                    @endforeach

                </ol> <!-- End Carousel Indicators -->

                <div class="carousel-inner"> <!-- Carousel Item -->

                    @if($sliders)
                    @foreach($sliders as $index => $slider)

                    <div class="carousel-item @if($index == 0) {{ 'active' }} @endif">
                        <img class="d-block img-fluid" src="{{ asset('assets/uploads/homeSlider/' . $slider->slider_image) }}" alt="First slide">
                    </div>

                    @endforeach
                    @endif

                </div> <!-- End Carousel Item -->

                <!-- Carousel Control -->
                <a class="carousel-control-prev" href="#mainCarouselIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#mainCarouselIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
                <!-- End Carousel Control -->

            </div> <!-- End Carousel -->
        </div>
    </div>  <!-- End Row -->
</div> <!-- End Carousel Container -->

<div class="container"> <!-- Content Container -->
    <div class="row">
        <div class="col-lg-3">
            @include('frontend.layouts.partial.sidebar')
        </div>  <!-- End col-lg-3 -->
    
        @if($dig)
            @foreach($dig as $active_dig)
        <div class="col-lg-9">
            <div class="dc_img_des">  <!-- DIG Message -->
                <div class="row">
                    <div class="col-lg-3 col-md-6 mb-4">
                        <div class="frame">
                            <img src="{{ asset('assets/uploads/dig/'. $active_dig->photo) }}">
                        </div>
                    </div>
                    <div class="col-lg-9 col-md-6 mb-4">
                        <div class="card h-100">
                            <div class="card-body">
                                <h4 class="titlebar ">
                                    <a href="#">Message From DIG {{$active_dig->dig_name }} BPM (Bar)</a>
                                </h4>
                                <p class="card-text">{!! str_limit($active_dig->message, 320) !!} <a href="{{ route('dig-message') }}">Read More ...</a></p>
                            </div>
                        </div>
                    </div>
                </div>  <!-- End Row -->
            </div> <!-- End DIG Message -->
            @endforeach
            @else

        <div class="col-lg-9">
            <div class="dc_img_des">  <!-- DIG Message -->
                <div class="row">
                    <div class="col-lg-3 col-md-6 mb-4">
                        <div class="frame">
                            <img src="http://digrajshahirange.gov.bd/assets/images/present_principal.jpg">
                        </div>
                    </div>
                    <div class="col-lg-9 col-md-6 mb-4">
                        <div class="card h-100">
                            <div class="card-body">
                                <h4 class="titlebar ">
                                    <a href="#">Message Form DIG</a>
                                </h4>
                                <p class="card-text">I would like to extend my heartfelt and warmest welcome to the official website of Bangladesh police, Rajshahi Range. We are dedicated to crime prevention, crime control and crime detection in bringing the offenders before judicial system. But with the advancement of ICT, crime patterns and criminal behaviors are subjected to change. <a href="http://digrajshahirange.gov.bd/dig-message">Read More ...</a></p>
                            </div>
                        </div>
                    </div>
                </div>  <!-- End Row -->
            </div> <!-- End DIG Message -->
            @endif


            <div class="row">
                <div class="col-sm-4 link-box">
                    <a href="https://play.google.com/store/apps/details?id=com.ntitas.bdPoliceHelpLine&hl=en">
                        <img src="{{ asset('assets/images/bdp-app.jpg') }}" alt="BD POLICE HELP LINE APP">
                    </a>
                </div>
                <div class="col-sm-4 link-box">
                    <a href="http://pcc.police.gov.bd/apex/f?p=500">
                        <img src="{{ asset('assets/images/clearance.jpg') }}" alt="ONLINE POLICE CLEARANCE">
                    </a>
                </div>
                <div class="col-sm-4 link-box">
                    <a href="{{ route('complaint')}}">
                        <img src="{{ asset('assets/images/complaint.jpg') }}" alt="COMPLAIN BOX">
                    </a>
                </div>
            </div>

            <!-- Services Section -->
            <h4 class="titlebar services">
                <a href="#">Services</a>
            </h4>

            <div class="row">

                @if($services)
                    @foreach($services as $service)

                    <div class="col-lg-4 col-md-6 mb-3">
                        <a href="#">
                            <img class="card-img-top" src="{{ asset('assets/uploads/services/'.$service->service_image) }}" alt="">
                        </a>
                        <div class="card-footer">
                            <p class=" service_text">{{ $service->service_name }}</p>
                        </div>
                    </div>

                    @endforeach
                @endif

            </div> <!-- End Row -->
            <!-- End Services Section -->
      
            <div class="dc_img_des">  <!-- Rajshahi Range News -->
                <div class="row">
                    <div class="col-lg-12">
                        <h4 class="titlebar" style="margin-bottom:25px;">
                            <center>
                                <a href="{{ url('news/') }}">Rajshahi Range News</a>
                            </center>
                        </h4>
                    </div>

                    @if($news)
                    @foreach($news as $homeNews)

                    <div class="col-lg-6 col-md-6 mb-4">
                        <div class="the_news_group">
                            <div class="list thumb_list mb20">
                                <ul>
                                    <li>
                                        <img class="img img-responsive" src="{{ asset('assets/uploads/news/'.$homeNews->cover_image) }}" alt="" style="float:left;height: 55px;width: 80px;margin-right: 20px;">
                                        <h3>
                                            <a href="{{ url('news/'.$homeNews->id) }}" target="_blank">
                                                {{ str_limit($homeNews->title, 60) }}
                                            </a>
                                        </h3>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>  <!-- End Col 6 -->

                    @endforeach
                    @endif

                </div>  <!-- End Row -->
            </div>  <!-- End Rajshahi Range News -->
      
            <!-- Photo Gallary -->
            <h4 class="titlebar services photo_g_m">
                <a href="#">Photo Gallary</a>
            </h4>
            <div class="instargram_area owl-carousel section_padding_100_0 clearfix" id="portfolio">

                @if($galleries)
                @foreach($galleries as $gallery)

                <div class="instagram_gallery_item">
                    <img class="img img-responsive" src="{{ asset('assets/uploads/gallery/'.$gallery->cover_img) }}" style="max-height: 120px;">
                    <div class="hover_overlay"><!-- Hover -->
                        <div class="yummy-table">
                            <div class="yummy-table-cell">
                                <div class="follow-me text-center">
                                    <a href="{{route('view-gallery', $gallery->id)}}"><i class="fa fa-eye" aria-hidden="true"></i> </a>
                                </div>
                            </div>
                        </div>
                    </div><!-- End Hover -->
                </div>  <!-- End Single Item -->

                @endforeach
                @endif

            </div>  <!-- End Photo Item Wrap -->
            <!-- End Photo Gallary -->

            <div class="color_theme_green">
                <div class="footbar_news">
                    <a class="more_link" href="{{ route('photo-gallery') }}">See More</a>
                </div>
            </div>

        </div>  <!-- End col-lg-9 -->
    </div>  <!--  End row -->
</div>  <!-- End Content Container -->

@include('frontend.layouts.partial.footer')