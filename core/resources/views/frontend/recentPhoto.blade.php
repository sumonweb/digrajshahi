@include('frontend.layouts.partial.head')
@include('frontend.layouts.partial.header')

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.css">


<div class="container">
  <div class="row">
    <div class="col-lg-3">
      @include('frontend.layouts.partial.sidebar') 
    </div>
    <div class="col-lg-9">
      <div class="container gallery-container">
        <h4 class="titlebar services">Photo Gallery</h4>
        <div class="tz-gallery">
          <div class="row">
            <div class="col-sm-6 col-md-4">
              <div class="thumbnail">
                <a class="lightbox" href="{{ asset('assets/images/gallery/01.jpg') }}">
                  <img src="{{ asset('assets/images/gallery/01.jpg') }}" alt="Park" style="max-width:100%;">
                </a>
                <div class="caption">
                  <h3>Image title</h3>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-md-4">
              <div class="thumbnail">
                <a class="lightbox" href="{{ asset('assets/images/gallery/02.jpg') }}">
                  <img src="{{ asset('assets/images/gallery/02.jpg') }}" alt="Bridge" style="max-width:100%;">
                </a>
                <div class="caption">
                  <h3>Image title</h3>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-md-4">
              <div class="thumbnail">
                <a class="lightbox" href="{{ asset('assets/images/gallery/03.jpg') }}">
                  <img src="{{ asset('assets/images/gallery/03.jpg') }}" alt="Tunnel" style="max-width:100%;">
                </a>
                <div class="caption">
                  <h3>Image title</h3>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-md-4">
              <div class="thumbnail">
                <a class="lightbox" href="{{ asset('assets/images/gallery/04.jpg') }}">
                  <img src="{{ asset('assets/images/gallery/04.jpg') }}" alt="Coast" style="max-width:100%;">
                </a>
                <div class="caption">
                  <h3>Image title</h3>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-md-4">
              <div class="thumbnail">
                <a class="lightbox" href="{{ asset('assets/images/gallery/05.jpg') }}">
                  <img src="{{ asset('assets/images/gallery/05.jpg') }}" alt="Rails" style="max-width:100%;">
                </a>
                <div class="caption">
                  <h3>Image title</h3>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-md-4">
              <div class="thumbnail">
                <a class="lightbox" href="{{ asset('assets/images/gallery/06.jpg') }}">
                  <img src="{{ asset('assets/images/gallery/06.jpg') }}" alt="Traffic" style="max-width:100%;">
                </a>
                <div class="caption">
                  <h3>Image title</h3>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="paggination" style="margin-bottom:20px;">
        <nav aria-label="..." class="pull-right">
          <ul class="pagination">
            <li class="page-item disabled">
              <a class="page-link" href="#" tabindex="-1">Previous</a>
            </li>
            <li class="page-item">
              <a class="page-link" href="#">1</a>
            </li>
            <li class="page-item active">
              <a class="page-link" href="#">2 <span class="sr-only">(current)</span></a>
            </li>
            <li class="page-item">
              <a class="page-link" href="#">3</a>
            </li>
            <li class="page-item">
              <a class="page-link" href="#">Next</a>
            </li>
          </ul>
        </nav>
      </div>
    </div>
  </div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.js"></script>
<script>
    baguetteBox.run('.tz-gallery');
</script>


@include('frontend.layouts.partial.footer')