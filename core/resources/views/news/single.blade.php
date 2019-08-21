@extends('news.layouts.main')

@section('og')
<meta property="og:title" content="{{ $single_news->title}}" />
<meta property="og:type" content="article" />
<meta property="og:description" content="{{ $single_news->description}}" />
<meta property="og:url" content="{{ url('news/'.$single_news->id)}}" />
<meta property="og:image" content="{{asset('assets/uploads/news/'.$single_news->cover_image)}}"   />
@endsection

@section('customCss')
    <style type="text/css">
        .cover-image{width: 100%; max-height: 450px;}
    </style>
@endsection

@section('content')
    <script>
        function fbs_click() {
        u=location.href;
        t=document.title;
window.open('http://www.facebook.com/sharer.php?u='+encodeURIComponent(u)+'&t='+encodeURIComponent(t),
                'sharer',
                'toolbar=0,status=0,width=626,height=436');

            return false;
        }
    </script>

	<div id="fb-root"></div>
	<script>(function(d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s); js.id = id;
            js.src = "//connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v2.4&appId=241110544128";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));</script>

<div id="fh5co-single-content" class="container-fluid pb-4 pt-4 paddding" >
    <div class="container paddding">
        <div class="row mx-0">

            <div class="col-md-8 animate-box text-justify" data-animate-effect="fadeInLeft">
                {{--<div id="fh5co-title-box" style="background-image: url('{{asset('assets/uploads/news/'.$single_news->cover_image)}}');" >--}}
                    {{--<div class="overlay"></div>--}}
                    {{--<div class="page-title">--}}

                        {{--<span>{{ $single_news->created_at->format('') }}</span>--}}
                        {{--<h2 style="font-size:18px;">রাজশাহী</h2>--}}
                    {{--</div>--}}
                {{--</div>--}}
                @if(!empty($single_news->cover_image))
                <img class="img img-responsive cover-image" src="{{asset('assets/uploads/news/'.$single_news->cover_image)}}" alt="">
                @endif

                <h3 style="margin-top:20px;">{{ $single_news->title }}</h3>
                <p>
                    {!! $single_news->description !!}
                </p>
                <br><br>
	            <div class="row">
	                @if($single_news->newsimages)
						@foreach($single_news->newsimages as $image)
				            <div class="col-md-4 more-images">
				                <img class="img img-fluid" src="{{ asset('assets/uploads/news/' . $image->news_image) }}" alt="" style="height: 160px !important; margin-bottom: 20px;">
	                        </div>
						@endforeach
					@endif
	            </div>
                <br><br>
                @if(!empty($single_news->video))
                {!! $single_news->video !!}
                @endif
                
                <br><br>
                <div class="fb-share-button" data-href="{{ url('news/'.$single_news->id)}}" data-layout="button_count"></div>
                
               
            </div>

	        @include('news.layouts.sidebar')

        </div>
    </div>
</div>
<div class="container-fluid pb-4 pt-5">
    <div class="container animate-box">
        <div>
            <div class="fh5co_heading fh5co_heading_border_bottom py-2 mb-4"> Latest News</div>
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
                            <div class="c_g"><i class="fa fa-clock-o"></i> {{ $news3->created_at->format('F d, Y') }}</div>
                        </div>
                    </div>
                </div>

            @endforeach

        </div>
    </div>
</div>
@endsection