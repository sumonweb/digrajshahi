@extends('layouts.master')

@inject('users', 'App\Services\UserService')
@inject('jurisdictionContacts', 'App\Services\JurisdictionContactsService')
@inject('news', 'App\Services\NewsService')
@inject('receivedContact', 'App\Services\ContactService')
@inject('category', 'App\Services\CategoryService')
@inject('thana', 'App\Services\ThanaService')
@inject('role', 'App\Services\RoleService')

@section('customCss')
	<link href="{{ asset('assets/backend/vendors/bower-jvectormap/css/jquery-jvectormap-1.2.2.css') }}" rel="stylesheet" type="text/css" />
	<link href="{{ asset('assets/backend/vendors/toastr/css/toastr.css') }}" rel="stylesheet" type="text/css" />
	<link href="{{ asset('assets/backend/vendors/QuickNote-jQuery-Plugin/jquery.quicknote.css') }}" rel="stylesheet" type="text/css" />
	<link href="{{ asset('assets/backend/css/custom_css/toastr.css') }}" rel="stylesheet" />
	<link href="{{ asset('assets/backend/css/custom_css/dashboard.css') }}" rel="stylesheet" type="text/css" />
	<style>
		.counter {
			display: table-cell;
			margin:1.5%;
			font-size:50px;
			width:100%;
			vertical-align: middle;
			padding-left: 110px;
		}
		.content{
			padding-top: 20px;
		}
	</style>
@stop

@section('title')

    <section class="content-header">
        <div class="row">
            <div class="col-md-6">
                <h1>User dashboard</h1>
            </div>
        </div>
        <ol class="breadcrumb">
            <li>
                <a href="{{ route('dashboard') }}">
                    <i class="fa fa-fw fa-home"></i>Dashboard
                </a>
            </li>
        </ol>
    </section>

@endsection

@section('content')
    <section class="content paddingleft_right15">
        <div class="row">
            <div class="col-lg-12">
                {{--<center><h1>This page is still under construction. We will launch soon.</h1></center>--}}
            </div>
        </div>
    </section>
    {{-- Page content --}}
    <section class="content">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="panel panel-warning">
                        <div class="panel-heading">
                            <h3  class="text-center">Published News</h3>
                            <div class="counter" data-count="{{ count($news->all()) }}">0</div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="panel panel-success">
                        <div class="panel-heading">
                            <h3 class="text-center">Unpublished News</h3>
                            <div class="counter" data-count="{{ count($news->unpublished()) }}">0</div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="panel panel-danger">
                        <div class="panel-heading">
                            <h3 class="text-center">News Category</h3>
                            <div class="counter" data-count="{{ count($category->all()) }}">0</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="panel panel-success">
                        <div class="panel-heading">
                            <h3 class="text-center">Jurisdiction Contacts</h3>
                            <div class="counter" data-count="{{ count($jurisdictionContacts->all()) }}">0</div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="panel panel-warning">
                        <div class="panel-heading">
                            <h3 class="text-center">Complaint</h3>
                            <div class="counter" data-count="{{ count($receivedContact->complaint()) }}">0</div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <h3 class="text-center">Information</h3>
                            <div class="counter" data-count="{{ count($receivedContact->info()) }}">0</div>
                        </div>
                    </div>
                </div>
            </div>
	        <div class="row">
		        <div class="col-md-4">
			        <div class="panel panel-info">
				        <div class="panel-heading">
					        <h3 class="text-center">Users</h3>
					        <div class="counter" data-count="{{ count($users->all()) }}">0</div>
				        </div>
			        </div>
		        </div>
		        <div class="col-md-4">
			        <div class="panel panel-danger">
				        <div class="panel-heading">
					        <h3 class="text-center">Role</h3>
					        <div class="counter" data-count="{{ count($role->all()) }}">0</div>
				        </div>
			        </div>
		        </div>
		        <div class="col-md-4">
			        <div class="panel panel-success">
				        <div class="panel-heading">
					        <h3 class="text-center">Thana</h3>
					        <div class="counter" data-count="{{ count($thana->all()) }}">0</div>
				        </div>
			        </div>
		        </div>
	        </div>
        </div>
    </section>
@endsection

{{-- page level scripts --}}
@section('customJs')
	<script src="{{ asset('assets/backend/vendors/sparkline/jquery.sparkline.min.js') }}" type="text/javascript"></script>
	<script src="{{ asset('assets/backend/vendors/flotchart/js/jquery.flot.js') }}" type="text/javascript"></script>
	<script src="{{ asset('assets/backend/vendors/flotchart/js/jquery.flot.resize.js') }}" type="text/javascript"></script>
	<script src="{{ asset('assets/backend/vendors/flotchart/js/jquery.flot.pie.js') }}" type="text/javascript"></script>
	<script src="{{ asset('assets/backend/vendors/flotchart/js/jquery.flot.time.js') }}" type="text/javascript"></script>
	<script src="{{ asset('assets/backend/vendors/splinecharts/jquery.flot.spline.js') }}" type="text/javascript"></script>
	<script src="{{ asset('assets/backend/vendors/flot.tooltip/js/jquery.flot.tooltip.js') }}" type="text/javascript"></script>
	<script src="{{ asset('assets/backend/vendors/bower-jvectormap/js/jquery-jvectormap-1.2.2.min.js') }}" type="text/javascript"></script>
	<script src="{{ asset('assets/backend/vendors/bower-jvectormap/js/jquery-jvectormap-world-mill-en.js') }}" type="text/javascript"></script>
	<script src="{{ asset('assets/backend/vendors/toastr/js/toastr.min.js') }}" type="text/javascript"></script>
	<script src="{{ asset('assets/backend/vendors/QuickNote-jQuery-Plugin/jquery.quicknote.js') }}" type="text/javascript"></script>
	<script src="{{asset('assets/backend/js/custom_js/style_switcher_index.js')}}" type="text/javascript"></script>
	<script src="{{ asset('assets/backend/js/custom_js/dashboard.js') }}" type="text/javascript"></script>
	<script src="{{ asset('assets/backend/js/jquery.counterup.min.js') }}" type="text/javascript"></script>
	1
	<script>
        $('.counter').each(function() {
            var $this = $(this),
                countTo = $this.attr('data-count');
            $({ countNum: $this.text()}).animate({
                    countNum: countTo
                },
                {
                    duration: 1000,
                    easing:'linear',
                    step: function() {
                        $this.text(Math.floor(this.countNum));
                    },
                    complete: function() {
                        $this.text(this.countNum);
                        //alert('finished');
                    }
                });
        });
	</script>

@stop