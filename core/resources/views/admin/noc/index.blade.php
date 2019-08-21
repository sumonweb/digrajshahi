@extends('layouts.master')

@section('title')

    <section class="content-header">
        <div class="row">
            <div class="col-md-6">
                <h1>All NOC</h1>
            </div>
            <div class="col-md-6">
                <h1><a href="{{ route('noc.create') }}" class="btn btn-primary pull-right">Create NOC</a></h1>
            </div>
        </div>
        <ol class="breadcrumb">
            <li>
                <a href="{{ route('dashboard') }}">
                    <i class="fa fa-fw fa-home"></i>Dashboard
                </a>
            </li>
            <li>
                <a href="#">All NOC</a>
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
                            All NOC
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
                                    <th>NOC name</th>
                                    <th>Jurisdiction level</th>
                                    <th>Jurisdiction name</th>
                                    <th>Created by</th>
                                    <th>Actions</th>
                                </tr>
                                </thead>
                                <tbody>

                                @if($nocs)
                                    @foreach($nocs as $key => $noc)

                                        <tr>
                                            <td>{{ ++$key }}</td>
                                            <td>{{ str_limit($noc->noc_name, 100) }}</td>
                                            <td>
                                                {{ $noc->jurisdictionlevel->name  }}
                                            </td>
                                            <td>
{{!empty($noc->district_id) ? $noc->district->name : 'Not available'}}
                                                {{ !empty($noc->thana_id) ? ' / ' . $noc->thana->name : '' }}
                                            </td>
                                            <td>{{$noc->user->name}}</td>
                                            <td>
                                                <a href="{{ route('noc.show', $noc->id) }}" class="btn btn-primary btn-xs">view</a>
                                                @if(Auth::user()->can('delete-noc'))
                                                    <button class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteModal{{$noc->id}}">Delete</button>
                                                @endif


                                                <div class="modal fade" id="deleteModal{{$noc->id}}" role="dialog">
                                                    <div class="modal-dialog modal-sm">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                                <h4 class="modal-title">Delete NOC</h4>
                                                            </div>
                                                            <div class="modal-body">
                                                                <p>Are you sure, you want to delete this NOC</p>
                                                            </div>
                                                            <div class="modal-footer">
                                                                {!! Form::open(['method'=>'DELETE', 'action'=>['NocController@destroy', $noc->id]]) !!}
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
                            {{$nocs->links()}}
                        </div>

                    </div>
                </div>
            </div>
    </section>
@endsection