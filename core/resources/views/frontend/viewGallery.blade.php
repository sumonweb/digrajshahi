@include('frontend.layouts.partial.head')
@include('frontend.layouts.partial.header')

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.css">
<style type="text/css">
    .tz-gallery .caption {
        padding: 17px 0px;
    }
</style>

<div class="container">
    <div class="row">
        <div class="col-lg-3">
            @include('frontend.layouts.partial.sidebar')
        </div>
        <div class="col-lg-9">
            <div class="container gallery-container">
                <h4 class="titlebar services">{{ $gallery->gallery_name }}</h4>
                <div class="tz-gallery">
                    <div class="row">
                        <div class="col-md-12">
                            <center>
                                <img src="{{ asset('assets/uploads/gallery/'.$gallery->cover_img) }}" alt="Park" style="max-width:100%;max-height: 600px;">
                            </center>
                            <div class="caption">
                                <h3>{{$gallery->caption}}</h3>
                            </div>
                        </div>

                        @if($gallery->galleryimages)
                        @foreach($gallery->galleryimages as $image)

                        <div class="col-sm-6 col-md-4">
                            <div class="thumbnail">
                                <a class="lightbox" href="{{ asset('assets/uploads/gallery/'.$image->image_path) }}">
                                    <img src="{{ asset('assets/uploads/gallery/'.$image->image_path) }}" alt="Park" style="width:100%;">
                                </a>
                            </div>
                        </div>

                        @endforeach
                        @endif

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.js"></script>
<script>
    baguetteBox.run('.tz-gallery');
</script>


@include('frontend.layouts.partial.footer')