@php
    use EasyBanglaDate\Types\DateTime as EnDateTime;
@endphp

<div class="col-md-3 animate-box" data-animate-effect="fadeInRight">
    <div>
        <div class="fh5co_heading fh5co_heading_border_bottom py-2 mb-4">ট্যাগ</div>
    </div>
    <div class="clearfix"></div>
    <div class="fh5co_tags_all">

        @if($newscategories)
            @foreach($newscategories as $newscategory)
                <a href="{{ url('news/category/'.$newscategory->id) }}" class="fh5co_tagg">{{ $newscategory->category_name }}</a>
            @endforeach
        @endif

    </div>
    <div>
        <div class="fh5co_heading fh5co_heading_border_bottom pt-3 py-2 mb-4">বিশেষ অভিযান</div>
    </div>

    @if($bisesh_ovijan)
        @foreach($bisesh_ovijan as $bovijan)

            <div class="row pb-3">
                <div class="col-5 align-self-center">
                    @if(!empty($bovijan->cover_image))
                        <img src="{{ asset('assets/uploads/news/'.$bovijan->cover_image) }}" alt="img" class="fh5co_most_trading"/>
                    @else
                        <img src="http://via.placeholder.com/80" alt="No cover photo">
                    @endif
                </div>
                <div class="col-7 paddding">
                    <div class="most_fh5co_treding_font"><a href="{{ url('news/').$bovijan->id }}">{{ $bovijan->title }} </a></div>
                    <div class="most_fh5co_treding_font_123">
	                    @php
		                    if (empty($bovijan->news_date)){
								$bd = new EnDateTime($bovijan->created_at);
								echo $bd->format('j F Y');
							} else{
								$bd = new EnDateTime(date('l jS F Y', strtotime($bovijan->news_date)));
								echo $bd->format('jS F Y');
							}
	                    @endphp
                    </div>
                </div>
            </div>

        @endforeach
    @endif

</div>