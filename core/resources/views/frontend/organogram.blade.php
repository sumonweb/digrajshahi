
@include('frontend.layouts.partial.head')
@include('frontend.layouts.partial.header')

<div class="container">
  <div class="row">
    <div class="col-lg-3">
      @include('frontend.layouts.partial.sidebar')
    </div>
    <!-- /.col-lg-3 -->

    <div class="col-lg-9">
      <div class="container text-center">
        <h4 class="titlebar services">Organogram Rajshahi Range</h4>
        <div class="row">
          <div class="col-md-12">
{{--         	 <img class="img-fluid" src="{{ asset('assets/images/organogram.jpg') }}">--}}
           <object data="{{ asset('assets/images/organogram.pdf') }}" type="application/pdf" height="510px" width="100%">
           <p><b>Example fallback content</b>: This browser does not support PDFs. Please download the PDF to view it: <a href="{{ asset('assets/images/organogram.pdf') }}">Download PDF</a>.</p>
        </object>
          </div>
        </div>
      </div>
    </div>  <!-- /.col-lg-9 -->
  </div>  <!-- /.row -->
</div>  <!-- /.container -->

@include('frontend.layouts.partial.footer')