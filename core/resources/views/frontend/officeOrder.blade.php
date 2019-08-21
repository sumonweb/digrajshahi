@include('frontend.layouts.partial.head')
@include('frontend.layouts.partial.header')

<style type="text/css">
    .pagination li a {

        position: relative;
        display: block;
        padding: .5rem .75rem;
        margin-left: -1px;
        line-height: 1.25;
        color: #007bff;
        background-color: #fff;
        border: 1px solid #dee2e6;

    }
    a, .paggination .pagination li a:hover, .paggination .pagination li a:focus, .pagination li a:active {

        text-decoration: none;
        -webkit-transition-duration: 500ms;
        transition-duration: 500ms;
        font-weight: 500;
        outline: none;

    }
    .paggination .active{
        background: #334571;
        border-color: #334571;
        color: #fff;
        position: relative;
        display: block;
        padding: .5rem .75rem;
        margin-left: -1px;
        line-height: 1.25;
    }

    .notice-list .paggination .active .page-link, .paggination .active .page-link {

        background: #334571;
        border-color: #334571;
        color: #fff;

    }
    .paggination .active {

        z-index: 1;
        color: #fff;
        background-color: #007bff;
        border-color: #007bff;

    }
    .paggination .disabled {
        position: relative;
        display: block;
        padding: .5rem .75rem;
        margin-left: -1px;
        line-height: 1.25;
        color: #007bff;
        background-color: #fff;
        border: 1px solid #dee2e6;
    }
</style>

<div class="container">
    <div class="row">
        <div class="col-lg-3">
      @include('frontend.layouts.partial.sidebar') 
    </div>
    <!-- /.col-lg-3 -->
        <div class="col-lg-9">
            <div class="section notice-list">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                Office order List
                            </div>
                            <div class="card-body">

                            @if($office_order)
                                @foreach($office_order as $order)

                                <div class="norice-list-wrap">
                                    <a href="{{ route('notice-details', $order->id) }}">
                                        <img class="notice-img" src="{{ asset('assets/images/notice.png') }}" alt="Notice Img">
                                        <p>{{$order->notice_title}}</p>
                                    </a>
                                </div>

                                @endforeach
                            @endif
                                <div class="col-lg-12"> <!-- Start Paggination -->
                                    <div class="paggination" style="margin-bottom:20px;margin-top:20px;">
                                        <nav aria-label="...">
                                            {{$office_order->links()}}
                                        </nav>
                                    </div>
                                </div>  <!-- End Start Paggination -->

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>  <!-- /.col-lg-9 -->
    </div>  <!-- /.row -->
</div>  <!-- /.container -->

@include('frontend.layouts.partial.footer')
