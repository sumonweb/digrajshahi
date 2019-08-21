@extends('layouts.master')

@section('title')
    <section class="content-header">
        <div class="row">
            <div class="col-md-6">
                <h1>All users list</h1>
            </div>
            <div class="col-md-6">
                <h1><a href="{{ route('users.create') }}" class="btn btn-primary pull-right">Create new user</a></h1>
            </div>
        </div>
        <ol class="breadcrumb">
            <li>
                <a href="index.html">
                    <i class="fa fa-fw fa-home"></i>Dashboard
                </a>
            </li>
            <li>
                <a href="#">All users list</a>
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
                            <i class="fa fa-users"></i>
                            All users
                        </h3>
                        <span class="pull-right">
                            <i class="fa fa-fw fa-times removepanel clickable"></i>
                            <i class="fa fa-fw fa-chevron-up clickable"></i>
                        </span>
                    </div>

                    <div class="panel-body">
                        <div class="bs-example">
                            <ul class="nav nav-tabs" style="margin-bottom: 15px;">
                                <li class="active">
                                    <a href="#active" data-toggle="tab">Active users</a>
                                </li>
                                <li>
                                    <a href="#deactivated" data-toggle="tab">Deactivated users</a>
                                </li>
                                <li class="">
                                    <a href="#deleted" data-toggle="tab">Deleted users</a>
                                </li>
                            </ul>
                            <div id="myTabContent" class="tab-content">
                                <div class="tab-pane fade active in" id="active">
                                    <div class="table-responsive">
                                        <table class="table" id="table">
                                            <thead>
                                            <tr class="filters">
                                                <th>Name</th>
                                                <th>Email</th>
                                                <th>Phone</th>
                                                <th>BP Position</th>
                                                <th>Status</th>
                                                <th>Actions</th>
                                            </tr>
                                            </thead>
                                            <tbody>

                                            @if($users)
                                                @foreach($users as $user)
                                                    <tr>
                                                        <td>{{ $user->name }}</td>
                                                        <td>{{ $user->email }}</td>
                                                        <td>{{ $user->phone }}</td>
                                                        <td>{{ $user->bp_position }}</td>
                                                        <td>
                                                            {{$user->status == 1 ? 'Active' : 'Deactivated'}}
                                                        </td>
                                                        <td>
                                                            <a href="{{route('users.show', $user->id)}}"><i class="fa fa-eye icon-viewcolor" title="View user" style="margin-right: 10px;"></i></a>

                                                            <a href="{{route('users.edit', $user->id)}}"><i class="fa fa-fw fa-pencil icon-editcolor" title="Edit user" style="margin-right: 10px;"></i></a>

                                                            <i class="fa fa-fw fa-times icon-deletecolor" data-toggle="modal" data-target="#myModal{{$user->id}}" title="Delete user"></i>

                                                            <div class="modal fade" id="myModal{{$user->id}}" role="dialog">
                                                                <div class="modal-dialog modal-sm">
                                                                    <div class="modal-content">
                                                                        <div class="modal-header">
                                                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                                            <h4 class="modal-title">Delete user</h4>
                                                                        </div>
                                                                        <div class="modal-body">
                                                                            <p>Are you sure, you want to delete this user? All user data will be deleted. Better option is deactivate this user.</p>
                                                                        </div>
                                                                        <div class="modal-footer">
                                                                            {!! Form::open(['method'=>'DELETE', 'action'=>['UsersController@destroy', $user->id]]) !!}
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
                                        {{$users->links()}}
                                    </div>

                                </div>
                                <div class="tab-pane fade" id="deactivated">
                                    <div class="table-responsive">
                                        <table class="table" id="table">
                                            <thead>
                                            <tr class="filters">
                                                <th>Name</th>
                                                <th>Email</th>
                                                <th>Phone</th>
                                                <th>BP Position</th>
                                                <th>Status</th>
                                                <th>Actions</th>
                                            </tr>
                                            </thead>
                                            <tbody>

                                            @if($deactivatedUsers)
                                                @foreach($deactivatedUsers as $deactivatedUser)

                                                    <tr>
                                                        <td>{{ $deactivatedUser->name }}</td>
                                                        <td>{{ $deactivatedUser->email }}</td>
                                                        <td>{{ $deactivatedUser->phone }}</td>
                                                        <td>{{ $deactivatedUser->bp_position }}</td>
                                                        <td>
                                                            {{$deactivatedUser->status == 1 ? 'Active' : 'Deactivated'}}
                                                        </td>
                                                        <td>
                                                            <a href="{{route('users.show', $deactivatedUser->id)}}"><i class="fa fa-eye icon-viewcolor" title="View user"></i></a>

                                                            <a href="{{route('users.edit', $deactivatedUser->id)}}"><i class="fa fa-fw fa-pencil icon-editcolor" title="Edit user"></i></a>

                                                            <i class="fa fa-fw fa-times icon-deletecolor" data-toggle="modal" data-target="#myModal{{$deactivatedUser->id}}" title="Delete user"></i>

                                                            <div class="modal fade" id="myModal{{$deactivatedUser->id}}" role="dialog">
                                                                <div class="modal-dialog modal-sm">
                                                                    <div class="modal-content">
                                                                        <div class="modal-header">
                                                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                                            <h4 class="modal-title">Delete user</h4>
                                                                        </div>
                                                                        <div class="modal-body">
                                                                            <p>Are you sure, you want to delete this user? All user data will be deleted. Better option is deactivate this user.</p>
                                                                        </div>
                                                                        <div class="modal-footer">
                                                                            {!! Form::open(['method'=>'DELETE', 'action'=>['UsersController@destroy', $deactivatedUser->id]]) !!}
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
                                        {{$users->links()}}
                                    </div>

                                </div>
                                <div class="tab-pane fade" id="deleted">
                                    <div class="table-responsive">
                                        <table class="table" id="table">
                                            <thead>
                                            <tr class="filters">
                                                <th>Name</th>
                                                <th>Email</th>
                                                <th>Phone</th>
                                                <th>BP Position</th>
                                                <th>Status</th>
                                                <th>Actions</th>
                                            </tr>
                                            </thead>
                                            <tbody>

                                            @if($deletedUsers)
                                                @foreach($deletedUsers as $deletedUser)

                                                    <tr>
                                                        <td>{{ $deletedUser->name }}</td>
                                                        <td>{{ $deletedUser->email }}</td>
                                                        <td>{{ $deletedUser->phone }}</td>
                                                        <td>{{ $deletedUser->bp_position }}</td>
                                                        <td>
                                                            {{$deletedUser->status == 1 ? 'Active' : 'Deactivated'}}
                                                        </td>
                                                        <td>
                                                            <a href="{{route('users.show', $deletedUser->id)}}"><i class="fa fa-eye icon-viewcolor" title="View user"></i></a>

                                                            <a href="{{route('users.edit', $deletedUser->id)}}"><i class="fa fa-fw fa-pencil icon-editcolor" title="Edit user"></i></a>
                                                        </td>
                                                    </tr>

                                                @endforeach
                                            @endif

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection