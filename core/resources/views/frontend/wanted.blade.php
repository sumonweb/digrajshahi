
@include('frontend.layouts.partial.head')
@include('frontend.layouts.partial.header')

<style type="text/css">
    .wanted-list{
        padding: 15px 0px;
        border-bottom: 1px solid #ccc;
    }
    .wanted-list p{
        font-size: 14px;
        font-family: "Open Sans", sans-serif;
    }
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
            <div class="section formar-dig text-center"> <!-- Staff List Section -->
                <h4 class="titlebar services">Most wanted List</h4>

                <div class="team">

                    @if($most_wanted)
                    @foreach($most_wanted as $wanted)

                    <div class="row wanted-list">
                        <div class="col-md-6" style="text-align: left;">
                            <p><b>Original name : </b>{{ $wanted->name }}</p>
                            @if(!empty($wanted->additional_name))
                            <p><b>Known as : </b>{{ $wanted->additional_name }}</p>
                            @endif
                            @if(!empty($wanted->father_name))
                            <p><b>Father's name : </b>{{ $wanted->father_name }}</p>
                            @endif
                            @if(!empty($wanted->address))
                            <p><b>Address : </b>{!! $wanted->address !!}</p>
                            @endif
                        </div>
                        <div class="col-md-3 offset-3">
                            @if(!empty($wanted->photo))
                            <img class="img img-responsive" src="{{ asset('assets/uploads/mostwanted/'. $wanted->photo) }}" alt="">
                            @else
                            {{ 'Photo not available' }}
                            @endif
                        </div>
                    </div>  <!-- End Row -->

                    @endforeach
                    @endif

                </div>
            </div>  <!-- End Staff List Section -->
            <div class="paggination" style="margin-bottom:20px;margin-top:20px;">
                <nav aria-label="...">
                    {{ $most_wanted->links() }}
                </nav>
            </div>

        </div>  <!-- /.col-lg-9 -->
    </div>  <!-- /.row -->
</div>  <!-- /.container -->

@include('frontend.layouts.partial.footer')