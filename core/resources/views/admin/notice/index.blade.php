@extends('layouts.master')

@section('title')

    <section class="content-header">
        <div class="row">
            <div class="col-md-6">
                <h1>All Notices</h1>
            </div>
            <div class="col-md-6">
                <h1><a href="{{ route('notice.create') }}" class="btn btn-primary pull-right">Create notice</a></h1>
            </div>
        </div>
        <ol class="breadcrumb">
            <li>
                <a href="{{ route('dashboard') }}">
                    <i class="fa fa-fw fa-home"></i>Dashboard
                </a>
            </li>
            <li>
                <a href="#">All Notices</a>
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
                            All Notices
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
                                    <th>Notice title</th>
                                    <th>Jurisdiction level</th>
                                    <th>Notice type</th>
                                    <th>Created by</th>
                                    <th>Actions</th>
                                </tr>
                                </thead>
                                <tbody>

                                @if($notices)
                                    @foreach($notices as $key => $notice)

                                        <tr>
                                            <td>{{ ++$key }}</td>
                                            <td>{{ str_limit($notice->notice_title, 100) }}</td>
                                            <td>
                                                {{ $notice->jurisdictionlevel->name  }}
                                            </td>
                                            <td>{{$notice->notice_type == 'notice' ? 'Notice' : 'Office order'}}</td>
                                            <td>{{$notice->user->name}}</td>

                                            <td>
                                                @if(Auth::user()->can('change-notice-status'))
                                                    @if ($notice->status == 1)
                                                        <a href="{{ url('admin/notice/unpublish/'.$notice->id) }}" class="btn btn-warning btn-xs">Unpublish</a>
                                                    @endif
                                                    @if ($notice->status == 0)
                                                        <a href="{{ url('admin/notice/publish/'.$notice->id) }}" class="btn btn-success btn-xs">Publish</a>
                                                    @endif
                                                @endif
                                                <a href="{{ route('notice.show', $notice->id) }}" class="btn btn-primary btn-xs">view</a>
                                                @if(Auth::user()->can('edit-notice'))
                                                    <a href="{{ route('notice.edit', $notice->id) }}" class="btn btn-primary btn-xs">Edit</a>
                                                @endif
                                                @if(Auth::user()->can('delete-notice'))
                                                    <button class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteModal{{$notice->id}}">Delete</button>
                                                @endif


                                                <div class="modal fade" id="deleteModal{{$notice->id}}" role="dialog">
                                                    <div class="modal-dialog modal-sm">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                                <h4 class="modal-title">Delete tender</h4>
                                                            </div>
                                                            <div class="modal-body">
                                                                <p>Are you sure, you want to delete this notice</p>
                                                            </div>
                                                            <div class="modal-footer">
                                                                {!! Form::open(['method'=>'DELETE', 'action'=>['NoticeController@destroy', $notice->id]]) !!}
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

                        <div class="text-right">
                            {{$notices->links()}}
                        </div>

                    </div>
                </div>
            </div>
    </section>
@endsection