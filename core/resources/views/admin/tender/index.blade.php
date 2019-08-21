@extends('layouts.master')

@section('title')

    <section class="content-header">
        <div class="row">
            <div class="col-md-6">
                <h1>All Tenders</h1>
            </div>
            <div class="col-md-6">
                <h1><a href="{{ route('tender.create') }}" class="btn btn-primary pull-right">Create new tender</a></h1>
            </div>
        </div>
        <ol class="breadcrumb">
            <li>
                <a href="index.html">
                    <i class="fa fa-fw fa-home"></i>Dashboard
                </a>
            </li>
            <li>
                <a href="#">All Tenders</a>
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
                            All Tenders
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
                                    <th>Tender title</th>
                                    <th>Start date</th>
                                    <th>End date</th>
                                    <th>Jurisdiction level</th>
                                    <th>Created by</th>
                                    <th>Approved by</th>
                                    <th>Actions</th>
                                </tr>
                                </thead>
                                <tbody>

                                @if($tenders)
                                    @foreach($tenders as $key => $tender)

                                        <tr>
                                            <td>{{ ++$key }}</td>
                                            <td>{{ str_limit($tender->tender_title, 60) }}</td>
                                            <td>{{ $tender->start_date }}</td>
                                            <td>{{ $tender->end_date }}</td>
                                            <td>
                                                {{ $tender->jurisdictionlevel->name  }}
                                            </td>
                                            <td>{{$tender->user->name}}</td>
                                            <td>{{!empty($tender->approved_by) ? $tender->approver->name : 'No data'}}</td>
                                            <td>
                                                @if(Auth::user()->can('change-tender-status'))
                                                    @if ($tender->status == 1)
                                                        <a href="{{ url('admin/tender/unpublish/'.$tender->id) }}" class="btn btn-warning btn-xs">Unpublish</a>
                                                    @endif
                                                    @if ($tender->status == 0)
                                                        <a href="{{ url('admin/tender/publish/'.$tender->id) }}" class="btn btn-success btn-xs">Publish</a>
                                                    @endif
                                                @endif
                                                <a href="{{ route('tender.show', $tender->id) }}" class="btn btn-primary btn-xs">view</a>
                                                @if(Auth::user()->can('edit-tender'))
                                                    <a href="{{ route('tender.edit', $tender->id) }}" class="btn btn-primary btn-xs">Edit</a>
                                                @endif
                                                @if(Auth::user()->can('delete-tender'))
                                                        <button class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteModal{{$tender->id}}">Delete</button>
                                                @endif


                                                <div class="modal fade" id="deleteModal{{$tender->id}}" role="dialog">
                                                    <div class="modal-dialog modal-sm">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                                <h4 class="modal-title">Delete tender</h4>
                                                            </div>
                                                            <div class="modal-body">
                                                                <p>Are you sure, you want to delete this tender</p>
                                                            </div>
                                                            <div class="modal-footer">
                                                                {!! Form::open(['method'=>'DELETE', 'action'=>['TenderController@destroy', $tender->id]]) !!}
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
                            {{$tenders->links()}}
                        </div>

                    </div>
                </div>
            </div>
    </section>
@endsection