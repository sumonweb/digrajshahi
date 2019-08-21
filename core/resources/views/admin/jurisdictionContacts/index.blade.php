@extends('layouts.master')

@section('title')

    <section class="content-header">
        <div class="row">
            <div class="col-md-6">
                <h1>All contacts</h1>
            </div>
            <div class="col-md-6">
                <h1><a href="{{ route('jurisdictionContacts.create') }}" class="btn btn-primary pull-right">Create new contact</a></h1>
            </div>
        </div>
        <ol class="breadcrumb">
            <li>
                <a href="{{ route('dashboard') }}">
                    <i class="fa fa-fw fa-home"></i>Dashboard
                </a>
            </li>
            <li>
                <a href="#">All contacts</a>
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
                            All contacts
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
                                    <th>Jurisdiction level</th>
                                    <th>District</th>
                                    <th>Thana</th>
                                    <th>Officer name</th>
                                    <th>Designation</th>
                                    <th>Created at</th>
                                    <th>Actions</th>
                                </tr>
                                </thead>
                                <tbody>

                                @if($jurisdictionContacts)
                                    @foreach($jurisdictionContacts as $key => $contacts)

                                        <tr>
                                            <td>{{ ++$key }}</td>
                                            <td>
                                                {{ $contacts->jurisdictionlevel->name  }}
                                            </td>
                                            <td>
                                                {{ !empty($contacts->district_id) ? $contacts->district->name : 'Not available' }}
                                            </td>
                                            <td>
                                                {{ !empty($contacts->thana_id) ? $contacts->thana->name : 'Not available' }}
                                            </td>
                                            <td>
                                                {{$contacts->person_name}}
                                            </td>
                                            <td>
                                                {{$contacts->designation}}
                                            </td>
                                            <td>{{$contacts->created_at->diffForHumans()}}</td>

                                            <td>
                                                <a href="{{ route('jurisdictionContacts.show', $contacts->id) }}" class="btn btn-primary btn-xs">view</a>

                                                <a href="{{ route('jurisdictionContacts.edit', $contacts->id) }}" class="btn btn-primary btn-xs">Edit</a>

                                                <button class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteModal{{$contacts->id}}">Delete</button>



                                                <div class="modal fade" id="deleteModal{{$contacts->id}}" role="dialog">
                                                    <div class="modal-dialog modal-sm">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                                <h4 class="modal-title">Delete contact</h4>
                                                            </div>
                                                            <div class="modal-body">
                                                                <p>Are you sure, you want to delete these contacts?</p>
                                                            </div>
                                                            <div class="modal-footer">
                                                                {!! Form::open(['method'=>'DELETE', 'action'=>['JurisdictionContactsController@destroy', $contacts->id]]) !!}
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
                            {{$jurisdictionContacts->links()}}
                        </div>

                    </div>
                </div>
            </div>
    </section>
@endsection