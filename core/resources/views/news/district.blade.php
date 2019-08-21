@extends('news.layouts.main')

@php
	use EasyBanglaDate\Types\DateTime as EnDateTime;
@endphp

@section('customCss')
	<style type="text/css">
		.pagination li{
			background:#f1f1f1 !important;color:#222;padding:12px 20px !important;font-weight:800;margin:0 10px;-moz-transition:all .2s ease;-o-transition:all .2s ease;-webkit-transition:all .2s ease;-ms-transition:all .2s ease;transition:all .2s ease
		}
		.pagination li:hover, .pagination li:focus{background:#222;color:#fff !important;font-weight:800} .pagination li:hover, .pagination li:focus{background:#222 !important;color:#fff}
	</style>
@endsection

@section('content')
	<div class="container-fluid pb-4 pt-4 paddding">
		<div class="container paddding">
			<div class="row mx-0">
				<div class="col-md-8 animate-box" data-animate-effect="fadeInLeft">
					<div>
						<div class="fh5co_heading fh5co_heading_border_bottom py-2 mb-4">{{$district->name}} </div>
					</div>
					{{--{{dd($category_news)}}--}}
					@if($district_news)
						@foreach($district_news as $news)
							<div class="row pb-4">
								<div class="col-md-5">
									<div class="fh5co_hover_news_img">
										<div class="fh5co_news_img">
											@if($news->cover_image)
												<img src="{{ asset('assets/uploads/news/'.$news->cover_image) }}" alt=""/>
											@else
												<img src="http://via.placeholder.com/300x230" alt="No cover photo">
											@endif
										</div>
										<div>

										</div>
									</div>
								</div>
								<div class="col-md-7 animate-box">
									<a href="{{ url('news/'.$news->id) }}" class="fh5co_magna py-2"> {{ $news->title }} </a> <br>
									<p class="fh5co_mini_time py-3"> {{$news->jurisdiction_level_id == 1 ? 'রাজশাহী রেঞ্জ' : ''}} {{$news->jurisdiction_level_id == 2 ? $news->district->name  : '' }}
										{{$news->jurisdiction_level_id == 3 ? $news->district->name.'/'.$news->thana->name : '' }}
										- @php
											if (empty($news->news_date)){
												$bd = new EnDateTime($news->created_at);
												echo $bd->format('j F Y');
											} else{
												$bd = new EnDateTime(date('l jS F Y', strtotime($news->news_date)));
												echo $bd->format('jS F Y');
											}
										@endphp                                     </p>
									<div class="fh5co_consectetur"> {!! str_limit($news->description, 150) !!}
									</div>
								</div>
							</div>

						@endforeach
					@endif

				</div>

				@include('news.layouts.sidebar')

			</div>
			<div class="row mx-0">
				<div class="col-12 text-center pb-4 pt-4">
					{{ $district_news->links() }}
				</div>
			</div>
		</div>
	</div>
@endsection
