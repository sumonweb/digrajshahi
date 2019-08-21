<!DOCTYPE html>
@php
    date_default_timezone_set('Asia/Dhaka');
    use EasyBanglaDate\Types\DateTime as EnDateTime;
@endphp
<html lang="en" class="no-js">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <html prefix="og: http://ogp.me/ns#">
    @yield('og')
    <title>DIG | Rajshahi range news</title>
    <link href="{{ asset('assets/news/css/bootstrap.css') }}" rel="stylesheet" type="text/css"/>
    <link href="{{ asset('assets/fonts/font-awesome-4.7.0/css/font-awesome.min.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/news/css/animate.css') }}" rel="stylesheet" type="text/css"/>
    <link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">
    <link href="{{ asset('assets/news/css/owl.carousel.css') }}" rel="stylesheet" type="text/css"/>
    <link href="{{ asset('assets/news/css/owl.theme.default.css') }}" rel="stylesheet" type="text/css"/>
    <!-- Bootstrap CSS -->
    <link href="{{ asset('assets/news/css/style_1.css') }}" rel="stylesheet" type="text/css"/>
    <link href="{{ asset('assets/news/css/media_query.css') }}" rel="stylesheet" type="text/css"/>
    <!-- Modernizr JS -->
    <script src="{{ asset('assets/news/js/modernizr-3.5.0.min.js') }}"></script>
    
    {{--Return home floating button css--}}
	<style>
		.label-container{
			position:fixed;
			bottom:21%;
			right:105px;
			display:table;
			visibility: hidden;
		}

		.label-text{
			color:#FFF;
			background:rgba(51,51,51,0.5);
			display:table-cell;
			vertical-align:middle;
			padding:10px;
			border-radius:3px;
		}

		.label-arrow{
			display:table-cell;
			vertical-align:middle;
			color:#333;
			opacity:0.5;
		}

		.float{
			position:fixed;
			width:60px;
			height:60px;
			bottom:20%;
			right:20px;
			background-color:#06C;
			color:#FFF;
			border-radius:50px;
			text-align:center;
			box-shadow: 2px 2px 3px #999;
		}

		.my-float{
			font-size:24px;
			margin-top:18px;
		}

		a.float + div.label-container {
			visibility: hidden;
			opacity: 0;
			transition: visibility 0s, opacity 0.5s ease;
		}

		a.float:hover + div.label-container{
			visibility: visible;
			opacity: 1;
		}
	</style>
	{{--Return home floating button css--}}

    @yield('customCss')

</head>
<body>
<div class="container-fluid fh5co_header_bg">
    <div class="container">
        <div class="row">
            <div class="col-12 fh5co_mediya_center" style="padding:8px;"><a href="#" class="color_fff fh5co_mediya_setting">
                <i class="fa fa-clock-o"></i>&nbsp;&nbsp;&nbsp;{{date('l', strtotime(date('Y-m-d'))).', '}}{{ date('d F Y') }}</a>
            </div>

        </div>
    </div>
</div>
</div>
<div class="container-fluid">
    <div class="container">
        <div class="row">
            <div class="col-sm-3 fh5co_padding_menu">
                <img src="{{ asset('assets/news/images/logo3.jpeg') }}" alt="img" class="fh5co_logo_width"/>
            </div>
            <div class="col-sm-9 align-self-center fh5co_mediya_right">

                <div class="text-center d-inline-block">
                    <a href="#" target="_blank" class="fh5co_display_table"><div class="fh5co_verticle_middle"><i class="fa fa-facebook"></i></div></a>
                </div>
                <div class="text-center d-inline-block">
                    <a href="#" target="_blank" class="fh5co_display_table"><div class="fh5co_verticle_middle"><i class="fa fa-twitter"></i></div></a>
                </div>
                <div class="text-center d-inline-block">
                    <a class="fh5co_display_table"><div class="fh5co_verticle_middle"><i class="fa fa-linkedin"></i></div></a>
                </div>

                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</div>
<div class="container-fluid bg-faded fh5co_padd_mediya padding_786">
    <div class="container padding_786">
        <nav class="navbar navbar-toggleable-md navbar-light">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                    aria-label="Toggle navigation"><span class="fa fa-bars"></span>
                </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item {{ request()->is('news') ? 'active' : '' }}">
                        <a class="nav-link" href="{{ url('/news') }}">প্রথম পাতা <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item {{ request()->is('news/category/1') ? 'active' : '' }}">
                        <a class="nav-link" href="{{ url('news/category/1') }}">জাতীয়  <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item {{ request()->is('news/category/2') ? 'active' : '' }}">
                        <a class="nav-link" href="{{ url('news/category/2') }}">বিশেষ অভিযান  <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item {{ request()->is('news/category/3') ? 'active' : '' }}">
                        <a class="nav-link" href="{{url('news/category/3') }}">নিরাপত্তা নির্দেশনা  <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item {{ request()->is('news/category/4') ? 'active' : '' }}">
                        <a class="nav-link" href="{{url('news/category/4') }}">অপরাধ/মামলা <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item {{ request()->is('news/category/5') ? 'active' : '' }}">
                        <a class="nav-link" href="{{url('news/category/5') }}">সাফল্য সমূহ <span class="sr-only">(current)</span></a>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="dropdownMenuButton2" data-toggle="dropdown"
                           aria-haspopup="true" aria-expanded="false">জেলার খবর <span class="sr-only">(current)</span></a>
                        <div class="dropdown-menu district_news" aria-labelledby="dropdownMenuLink_1">
	                        @foreach($districts as $district)
                            <a class="dropdown-item" href="{{ url('news/district/'.$district->id) }}">{{ $district->name }}</a>
                            @endforeach
                        </div>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
</div>



@yield('content')

{{--Return home floating button--}}
<a href="{{ route('home') }}" class="float">
	<i class="fa fa-home my-float"></i>
</a>
<div class="label-container">
	<div class="label-text">DIG Homepage</div>
	<i class="fa fa-play label-arrow"></i>
</div>
{{--Return home floating button--}}

<div class="container-fluid fh5co_footer_bg pb-3">
    
    {{--Return home floating button--}}
	<a href="{{ route('home') }}" class="float">
		<i class="fa fa-home my-float"></i>
	</a>
	<div class="label-container">
		<div class="label-text">DIG Homepage</div>
		<i class="fa fa-play label-arrow"></i>
	</div>
	{{--Return home floating button--}}
    
    <div class="container animate-box">
        <div class="row">
            <div class="col-12 spdp_right py-5"></div>
            <div class="clearfix"></div>
            <div class="col-12 col-md-6 col-lg-3">
                <div class="footer_main_title py-3"> আমাদের সম্পর্কে</div>
                <div class="footer_sub_about pb-3"> রাজশাহী রেঞ্জ মোট ৮টি জেলা নিয়ে গঠিত।রাজশাহী, চাঁপাইনবাবগঞ্জ, নাটোর, নওগাঁ, পাবনা, সিরাজগঞ্জ, বগুড়া এবং জয়পুরহাট। আরেকটি ইউনিট হল রেঞ্জ রিজার্ভ ফোর্স  (আরআরএফ)।
                </div>
                <div class="footer_mediya_icon">
                    <div class="text-center d-inline-block"><a class="fh5co_display_table_footer">
                            <div class="fh5co_verticle_middle"><i class="fa fa-linkedin"></i></div>
                        </a></div>
                    <div class="text-center d-inline-block"><a class="fh5co_display_table_footer">
                            <div class="fh5co_verticle_middle"><i class="fa fa-google-plus"></i></div>
                        </a></div>
                    <div class="text-center d-inline-block"><a class="fh5co_display_table_footer">
                            <div class="fh5co_verticle_middle"><i class="fa fa-twitter"></i></div>
                        </a></div>
                    <div class="text-center d-inline-block"><a class="fh5co_display_table_footer">
                            <div class="fh5co_verticle_middle"><i class="fa fa-facebook"></i></div>
                        </a></div>
                </div>
            </div>

            <div class="col-12 col-md-6 col-lg-2">
                <div class="footer_main_title py-3"> ক্যাটাগরি </div>
                <ul class="footer_menu">
                    @if($categories)
                        @foreach($categories as $category)
                            <li><a href="{{ url('news/category/'.$category->id) }}" class=""><i class="fa fa-angle-right"></i>&nbsp;&nbsp; {{ $category->category_name }}</a></li>
                        @endforeach
                    @endif
                </ul>
            </div>

            <div class="col-12 col-md-6 col-lg-4 position_footer_relative">
                <div class="footer_main_title py-3">জেলার সর্বশেষ সংবাদ</div>
                @if($district_news_footer)
                    @foreach($district_news_footer as $dnews)
                <div class="footer_makes_sub_font">
	                @php
		                if (empty($dnews->news_date)){
							$bd = new EnDateTime($dnews->created_at);
							echo $bd->format('j F Y');
						} else{
							$bd = new EnDateTime(date('l jS F Y', strtotime($dnews->news_date)));
							echo $bd->format('jS F Y');
						}
	                @endphp
	                -
	                {{ $dnews->district->name }}
                </div>
                <a href="{{ url('news/'.$dnews->id) }}" class="footer_post pb-4"> {{ str_limit($dnews->title, 80) }}... </a>
                    @endforeach
                @endif
            </div>

            <div class="col-12 col-md-6 col-lg-3 position_footer_relative">
                <div class="footer_main_title py-3"> থানার সর্বশেষ সংবাদ </div>
                @if($thana_news)
                    @foreach($thana_news as $tnews)
                <div class="footer_makes_sub_font">
	                @php
		                if (empty($tnews->news_date)){
							$bd = new EnDateTime($tnews->created_at);
							echo $bd->format('j F Y');
						} else{
							$bd = new EnDateTime(date('l jS F Y', strtotime($tnews->news_date)));
							echo $bd->format('jS F Y');
						}
	                @endphp
	                -
	                {{ $tnews->district->name .'/'.$tnews->thana->name }}
                </div>
                <a href="{{ url('news/'.$tnews->id) }}" class="footer_post pb-4"> {{ str_limit($tnews->title, 80) }} </a>
                    @endforeach
                @endif
            </div>
        </div>
    </div>
</div>
<div class="container-fluid fh5co_footer_right_reserved">
    <div class="container">
        <div class="row  ">
	        @php
	            $bd = new EnDateTime('now');
	            $year = $bd->format('Y');
	        @endphp
            <div class="col-12 col-md-6 py-4 Reserved"> © কপিরাইট {{ $year }} সর্বসত্ব সংরক্ষিত। ডিজাইন:  <a href="http://desktopit.com.bd/" title="Free HTML5 Bootstrap templates"> ডেস্কটপ আইটি</a></div>
            <div class="col-12 col-md-6 spdp_right py-4">
                <a href="{{ route('home') }}" class="footer_last_part_menu"><i class="fa fa-undo"></i> Return to DIG Home</a>
        </div>
    </div>
</div>

<div class="gototop js-top">
    <a href="#" class="js-gotop"><i class="fa fa-arrow-up"></i></a>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="{{ asset('assets/news/js/owl.carousel.min.js') }}"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"
        integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb"
        crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"
        integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn"
        crossorigin="anonymous"></script>
<!-- Waypoints -->
<script src="{{ asset('assets/news/js/jquery.waypoints.min.js') }}"></script>
<!-- Main -->
<script src="{{ asset('assets/news/js/main.js') }}"></script>

@yield('customJs')

</body>
</html>