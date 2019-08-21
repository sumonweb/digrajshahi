@include('frontend.layouts.partial.head')
@include('frontend.layouts.partial.header')

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.css">
<style type="text/css">
    .tz-gallery .caption p{
        font-size: 14px;
    }
    .gallery-cover-image{
        height: 143px;
    }
    .pagination li{
        background:#f1f1f1 !important;color:#222;padding:12px 20px !important;font-weight:800;margin:0 10px;-moz-transition:all .2s ease;-o-transition:all .2s ease;-webkit-transition:all .2s ease;-ms-transition:all .2s ease;transition:all .2s ease
    }
    .pagination li:hover, .pagination li:focus{background:#222;color:#fff !important;font-weight:800} .pagination li:hover, .pagination li:focus{background:#222 !important;color:#fff}
</style>


<div class="container">
    <div class="row">
        <div class="col-lg-3">
            @include('frontend.layouts.partial.sidebar')
        </div>
        <div class="col-lg-9">
            <div class="container gallery-container">
                <h4 class="titlebar services">Image Gallery</h4>
                <div class="tz-gallery">
                    <div class="row">

                    @if($galleries)
                        @foreach($galleries as $gallery)

                        <div class="col-sm-6 col-md-4">
                            <div class="thumbnail">
                                <center>
                                    <a href="{{route('view-gallery', $gallery->id)}}">
                                        <img class="gallery-cover-image" src="{{ asset('assets/uploads/gallery/'.$gallery->cover_img) }}" alt="Park" style="max-width:100%;">
                                    </a>
                                </center>
                                <div class="caption">
                                    <a href="{{route('view-gallery', $gallery->id)}}"><h3>{{ $gallery->caption }}</h3></a>
                                    <p>
                                        {!! str_limit($gallery->gallery_name, 100) !!}
                                    </p>
                                </div>
                            </div>
                        </div>

                        @endforeach
                    @endif

                    </div>
                </div>
            </div>
            <div class="paggination" style="margin-bottom:20px;">
                {{ $galleries->links() }}
            </div>
        </div>
    </div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.js"></script>
<script>
    baguetteBox.run('.tz-gallery');
</script>


@include('frontend.layouts.partial.footer')