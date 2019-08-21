@extends('layouts.master')

@section('title')

    <section class="content-header">
        <div class="row">
            <div class="col-md-6">
                <h1>Superintendents of Police</h1>
            </div>
        </div>
        <ol class="breadcrumb">
            <li>
                <a href="{{ route('dashboard') }}">
                    <i class="fa fa-fw fa-home"></i>Dashboard
                </a>
            </li>
            <li>
                <a href="#">SP</a>
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
    <section class="content paddingleft_right15">
        <div class="row">
            <div class="col-lg-12">
                <!-- First Basic Table strats here-->
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">
                            <i class="fa fa-fw fa-bell-o"></i>
                            Respected Superintendent of Police
                        </h3>
                        <span class="pull-right">
                            <i class="fa fa-fw fa-times removepanel clickable"></i>
                            <i class="fa fa-fw fa-chevron-up clickable"></i>
                        </span>
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table class="table" id="table">
                                <thead>
                                <tr class="filters">
                                    <th>Sl</th>
                                    <th>Name</th>
                                    <th>District</th>
                                    <th>Joined on</th>
                                    <th>Left On</th>
                                    @if(Auth::user()->can('edit-dig'))
                                        <th>Actions</th>
                                    @endif
                                </tr>
                                </thead>
                                <tbody>

                                @if($sps)
                                    @foreach($sps as $key => $sp)

                                        <tr>
                                            <td>{{ ++$key }}</td>
                                            <td>{{ $sp->sp_name }}</td>
                                            <td>{{ $sp->district->name }}</td>
                                            <td width="20%">{{ date('d/m/Y', strtotime($sp->period_from)) }}</td>
                                            <td width="20%">{{$sp->period_to ? date('d/m/Y', strtotime($sp->period_to)) : 'Still on duty'}}</td>
                                            @if(Auth::user()->can('edit-sp'))
                                                <td>
                                                    <a href="{{ route('sp.show', $sp->id) }}"><i class="fa fa-fw fa-eye icon-viewcolor"></i></a>
                                                    <a href="{{ route('sp.edit', $sp->id) }}"><i class="fa fa-fw fa-pencil icon-editcolor"></i></a>
	                                                <i class="fa fa-fw fa-times icon-deletecolor" data-toggle="modal" data-target="#myModal{{$sp->id}}"></i>


	                                                <div class="modal fade" id="myModal{{$sp->id}}" role="dialog">
		                                                <div class="modal-dialog modal-sm">
			                                                <div class="modal-content">
				                                                <div class="modal-header">
					                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
					                                                <h4 class="modal-title">Delete SP</h4>
				                                                </div>
				                                                <div class="modal-body">
					                                                <p>Are you sure, you want to delete this SP?</p>
				                                                </div>
				                                                <div class="modal-footer">
					                                                {!! Form::open(['method'=>'DELETE', 'action'=>['SpController@destroy', $sp->id]]) !!}
					                                                <button type="submit" class="btn btn-danger" style="float: left;">Yes</button>
					                                                {!! Form::close() !!}
					                                                <button type="button" class="btn btn-default" data-dismiss="modal" style="float: right; margin-left: 15px;">Cancel</button>
				                                                </div>
			                                                </div>
		                                                </div>
	                                                </div>
                                                </td>
                                            @endif
                                        </tr>

                                    @endforeach
                                @endif

                                </tbody>
                            </table>
                        </div>

                        <div class="text-right">
                            {{$sps->links()}}
                        </div>

                    </div>
                </div>
            </div>
    </section>
@endsection