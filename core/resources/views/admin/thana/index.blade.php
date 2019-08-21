@extends('layouts.master')

@section('customCss')
	<!--page level css -->
	<link href="{{ asset('assets/backend/vendors/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css') }}" rel="stylesheet" type="text/css" />
	<link href="{{ asset('assets/backend/vendors/summernote/summernote.css') }}" rel="stylesheet" media="screen" type="text/css" >
	<link href="{{asset('assets/backend/css/icheck.css')}}" rel="stylesheet" type="text/css"/>
	<link href="{{ asset('assets/backend/vendors/jasny-bootstrap/css/jasny-bootstrap.css') }}" rel="stylesheet" />
	<!--end of page level css-->
@endsection

@section('title')

    <section class="content-header">
        <div class="row">
            <div class="col-md-6">
                <h1>Thana</h1>
            </div>
        </div>
        <ol class="breadcrumb">
            <li>
                <a href="index.html">
                    <i class="fa fa-fw fa-home"></i>Dashboard
                </a>
            </li>
            <li>
                <a href="#">Thana</a>
            </li>
        </ol>
	    <div class="flash-message">
		    @foreach (['danger', 'warning', 'success', 'info'] as $msg)
			    @if(Session::has('alert-' . $msg))

				    <p class="alert alert-{{ $msg }}">{{ Session::get('alert-' . $msg) }} <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a></p>
			    @endif
		    @endforeach
	    </div> <!-- end .flash-message -->
    </section>

@endsection

@section('content')

    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        <i class="fa fa-fw fa-bell-o"></i>
                        All Thana
                    </h3>
                    <span class="pull-right">
                        <i class="fa fa-fw fa-times removepanel clickable"></i>
                        <i class="fa fa-fw fa-chevron-up clickable"></i>
                    </span>
                </div>
                <div class="panel-body">
                    <div class="table-responsive table-stripped">
                        <table class="table" id="table">
                            <thead>
                            <tr class="filters">
                                <th>Sl</th>
                                <th>Thana name</th>
                                <th>District</th>
                                <th>Created at</th>
                                <th>Actions</th>
                            </tr>
                            </thead>
                            <tbody>

                            @if($thanas)
                                @foreach($thanas as $key => $thana)

                                    <tr>
                                        <td>{{ ++$key }}</td>
                                        <td>{{ $thana->name }}</td>
                                        <td>{{ $thana->district->name }}</td>
                                        <td>{{ $thana->created_at->diffForHumans() }}</td>
                                        <td>
                                            <a href="{{ route('thana.edit', $thana->id) }}"><i class="fa fa-fw fa-pencil icon-editcolor"></i></a>
	                                        <a href="{{ route('thana.show', $thana->id) }}"><i class="fa fa-fw fa-eye-slash icon-viewcolor"></i></a>
                                            {{--<i class="fa fa-fw fa-times icon-deletecolor" data-toggle="modal" data-target="#myModal{{$thana->id}}"></i>--}}


                                            <div class="modal fade" id="myModal{{$thana->id}}" role="dialog">
                                                <div class="modal-dialog modal-sm">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                            <h4 class="modal-title">Delete role</h4>
                                                        </div>
                                                        <div class="modal-body">
                                                            <p>Are you sure, you want to delete this Thana?</p>
                                                        </div>
                                                        <div class="modal-footer">
                                                            {!! Form::open(['method'=>'DELETE', 'action'=>['ThanaController@destroy', $thana->id]]) !!}
                                                            <button type="submit" class="btn btn-danger" style="float: left;">Yes</button>
                                                            {!! Form::close() !!}
                                                            <button type="button" class="btn btn-default" data-dismiss="modal" style="float: right; margin-left: 15px;">Cancel</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>

                                @endforeach
                            @endif
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            {{ $thanas->links() }}
        </div>
    </div>

@endsection

@section('customJs')
	<script src="{{ asset('assets/backend/vendors/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js') }}" type="text/javascript"></script>
	<script src="{{ asset('assets/backend/vendors/ckeditor/ckeditor.js') }}" type="text/javascript" ></script>
	<script src="{{ asset('assets/backend/vendors/ckeditor/adapters/jquery.js') }}" type="text/javascript" ></script>
	<script src="{{ asset('assets/backend/vendors/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.js') }}" type="text/javascript" ></script>
	<script src="{{ asset('assets/backend/vendors/summernote/summernote.min.js') }}" type="text/javascript" ></script>
	<script src="{{ asset('assets/backend/js/custom_js/form_editors.js') }}" type="text/javascript"></script>
	<script src="{{asset('assets/backend/vendors/jasny-bootstrap/js/jasny-bootstrap.js')}}" type="text/javascript"></script>
	<!-- end of page level js -->
@endsection