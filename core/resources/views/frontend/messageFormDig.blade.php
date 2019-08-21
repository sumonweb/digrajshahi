
@include('frontend.layouts.partial.head')
@include('frontend.layouts.partial.header')


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
                                    <a href="#">Message Form DIG</a>
                                </h4>
                                <p class="card-text"> {!! $active_dig->message !!} </p>
                            </div>
                        </div>
                    </div>
                </div>  <!-- End Row -->
            </div> <!-- End DIG Message -->
        </div>  <!-- End col-lg-9 -->
        @endforeach
        @endif
    </div>  <!--  End row -->
</div>  <!-- End Content Container -->

@include('frontend.layouts.partial.footer')