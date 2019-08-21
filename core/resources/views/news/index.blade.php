@extends('news.layouts.main')

@php
	use EasyBanglaDate\Types\DateTime as EnDateTime;
@endphp

@section('content')
<div class="container-fluid paddding">
    <div class="row mx-0">
        <div class="col-md-6 col-12 paddding animate-box" data-animate-effect="fadeIn">
            <div class="fh5co_suceefh5co_height"><img src="{{ asset('assets/uploads/news/'.$homepagenews1[0]->cover_image) }}" alt="img"/>
                <div class="fh5co_suceefh5co_height_position_absolute"></div>
                <div class="fh5co_suceefh5co_height_position_absolute_font">
                    <div class="color_fff"> <i class="fa fa-clock-o"></i>&nbsp;&nbsp;
	                    @php
	                        if (empty($homepagenews1[0]->news_date)){
	                            $bd = new EnDateTime($homepagenews1[0]->created_at);
	                            echo $bd->format('j F Y');
	                        } else{
		                        $bd = new EnDateTime(date('l jS F Y', strtotime($homepagenews1[0]->news_date)));
                                echo $bd->format('jS F Y');
	                        }
	                    @endphp
                    </div>
                    <div class=""><a href="{{ url('news/'.$homepagenews1[0]->id) }}" class="fh5co_good_font"> {{ $homepagenews1[0]->title }} </a></div>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="row">

                @foreach($homepagenews2 as $news2)

                <div class="col-md-6 col-6 paddding animate-box" data-animate-effect="fadeIn">
                    <div class="fh5co_suceefh5co_height_2"><img src="{{ $news2->cover_image == null ? 'No image' : asset('assets/uploads/news/'.$news2->cover_image) }}" alt="img"/>
                        <div class="fh5co_suceefh5co_height_position_absolute"></div>
                        <div class="fh5co_suceefh5co_height_position_absolute_font_2">
                            <div class="color_fff"> <i class="fa fa-clock-o"></i>&nbsp;&nbsp;
                            @php
	                            if (empty($news2->news_date)){
								$bd = new EnDateTime($news2->created_at);
								echo $bd->format('j F Y');
							} else{
								$bd = new EnDateTime(date('l jS F Y', strtotime($news2->news_date)));
								echo $bd->format('jS F Y');
							}
                            @endphp
                            </div>
                            <div class=""><a href="{{ url('news/'.$news2->id) }}" class="fh5co_good_font_2"> {{ str_limit($news2->title, 50) }} </a></div>
                        </div>
                    </div>
                </div>

                @endforeach

            </div>
        </div>
    </div>
</div>

<div class="container-fluid pt-5">
    <div class="container animate-box">
        <div>
            <div class="fh5co_heading fh5co_heading_border_bottom py-2 mb-4"> সর্বশেষ সংবাদ </div>
        </div>
        <div class="owl-carousel owl-theme" id="slider2">

            @foreach($todaynews as $news3)

            <div class="item px-2">
                <div class="fh5co_hover_news_img">
                    <div class="fh5co_news_img">
                        @if(!empty($news3->cover_image))
                            <img src="{{ asset('assets/uploads/news/'.$news3->cover_image) }}" alt="Image"/>
                        @else
                            <img src="http://via.placeholder.com/350x260" alt="No cover photo">
                        @endif
                    </div>
                    <div>
                        <a href="{{ url('news/'.$news3->id) }}" class="d-block fh5co_small_post_heading"><span class="">{{ $news3->title }}</span></a>
                        <div class="c_g"><i class="fa fa-clock-o"></i>
	                        @php
		                        if (empty($news3->news_date)){
								$bd = new EnDateTime($news3->created_at);
								echo $bd->format('j F Y');
							} else{
								$bd = new EnDateTime(date('l jS F Y', strtotime($news3->news_date)));
								echo $bd->format('jS F Y');
							}
	                        @endphp
                        </div>
                    </div>
                </div>
            </div>

            @endforeach

        </div>
    </div>
</div>
<div class="container-fluid fh5co_video_news_bg pb-4">
    <div class="container animate-box" data-animate-effect="fadeIn">
        <div>
            <div class="fh5co_heading fh5co_heading_border_bottom pt-5 pb-2 mb-4  text-white">ভিডিও সংবাদ </div>
        </div>
        <div>
            <div class="owl-carousel owl-theme" id="slider3">

                @if($videonews)
                @foreach($videonews as $news4)
                <div class="item px-2">
                    <div class="fh5co_hover_news_img">
                        <div class="fh5co_hover_news_img_video_tag_position_relative">
                            <div class="fh5co_news_img">
                               {!! $news4->video !!}
                            </div>
                        </div>
                        <div class="pt-2">
                            <a href="{{ url('news/'.$news4->id) }}" class="d-block fh5co_small_post_heading fh5co_small_post_heading_1">
                            <span >{{ $news4->title }} </span></a>
                            <div class="c_g"><i class="fa fa-clock-o"></i>
	                            @php
		                            if (empty($news4->news_date)){
									$bd = new EnDateTime($news4->created_at);
									echo $bd->format('j F Y');
								} else{
									$bd = new EnDateTime(date('l jS F Y', strtotime($news4->news_date)));
									echo $bd->format('jS F Y');
								}
	                            @endphp
                            </div>
                        </div>
                    </div>
                </div>

                @endforeach
                @endif

            </div>
        </div>
    </div>
</div>



<div class="container-fluid pb-4 pt-4 paddding">
    <div class="container paddding">
        <div class="row mx-0">
            <div class="col-md-8 animate-box" data-animate-effect="fadeInLeft">
                <div>
                    <div class="fh5co_heading fh5co_heading_border_bottom py-2 mb-4">সাফল্য সমূহ</div>
                </div>

                @if($safollowsomuho)
                @foreach($safollowsomuho as $news5)

                <div class="row pb-4">
                    <div class="col-md-5">
                        <div class="fh5co_hover_news_img">
                            <div class="fh5co_news_img"><img src="{{asset('assets/uploads/news/'.$news5->cover_image)}}" alt=""/></div>
                            <div></div>
                        </div>
                    </div>
                    <div class="col-md-7 animate-box">
                        <a href="{{ url('news/'.$news5->id) }}" class="fh5co_magna py-2"> {{$news5->title}} </a><br>
	                    <p class="fh5co_mini_time py-3"> {{$news5->jurisdiction_level_id == 1 ? 'রাজশাহী রেঞ্জ' : ''}} {{$news5->jurisdiction_level_id == 2 ? $news5->district->name  : '' }}
 {{$news5->jurisdiction_level_id == 3 ? $news5->district->name.'/'.$news5->thana->name : '' }}
                            - @php
			                    if (empty($news5->news_date)){
								$bd = new EnDateTime($news5->created_at);
								echo $bd->format('j F Y');
							} else{
								$bd = new EnDateTime(date('l jS F Y', strtotime($news5->news_date)));
								echo $bd->format('jS F Y');
							}
		                    @endphp
	                    </p>
                        <div class="fh5co_consectetur"> {{str_limit(strip_tags($news5->description), 150)}}
                        </div>
                    </div>
                </div>

                @endforeach
                @endif

            </div>

	        @include('news.layouts.sidebar')

        </div>
    </div>
</div>
@endsection