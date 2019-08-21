@extends('layouts.master')

@section('customCss')
    <style type="text/css">
        .table tr td, .table tr th{
            border: 0px solid !important;
        }
    </style>
@endsection

@section('title')
    <section class="content-header">
        <div class="row">
            <div class="col-md-6">
                <h1>User details</h1>
            </div>
            <div class="col-md-6">
                <h1><a href="{{ route('users.index') }}" class="btn btn-primary pull-right">Return to all users</a></h1>
            </div>
        </div>
        <ol class="breadcrumb">
            <li>
                <a href="index.html">
                    <i class="fa fa-fw fa-home"></i>Dashboard
                </a>
            </li>
            <li>
                <a href="#">User details</a>
            </li>
        </ol>
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
                            <i class="fa fa-user"></i>
                            User details
                        </h3>
                        <span class="pull-right">
                            <i class="fa fa-fw fa-times removepanel clickable"></i>
                            <i class="fa fa-fw fa-chevron-up clickable"></i>
                        </span>
                    </div>
                    <div class="panel-body">
                        <div class="col-md-5">
                            @if(!empty($user->photo))
                                <img class="img img-responsive img-rounded" src="{{ asset('assets/uploads/users/' . $user->photo) }}" alt="">
                            @else
                                {{"Image not given."}}
                            @endif
                        </div>
                        <div class="col-md-6">
                            <table class="table" id="table">
                                <tbody>
                                <tr class="filters">
                                    <th>Name</th>
                                    <td>{{ $user->name }}</td>
                                </tr>
                                <tr>
                                    <th>Email</th>
                                    <td>{{ $user->email }}</td>
                                </tr>
                                <tr>
                                    <th>Phone</th>
                                    <td>{{ $user->phone }}</td>
                                </tr>
                                <tr>
                                    <th>BP Position</th>
                                    <td>{{ $user->bp_position ? $user->bp_position : 'No position given.' }}</td>
                                </tr>
                                <tr>
                                    <th>Jurisdiction Level</th>
                                    <td>{{ $user->jurisdictionLevel->name }}</td>
                                </tr>
                                <tr>
                                    <th>District</th>
                                    <td>{{ $user->district ? $user->district->name : 'This user belongs to DIG office.'  }}</td>
                                </tr>
                                <tr>
                                    <th>Thana</th>
                                    <td>{{ $user->thana ? $user->thana->name : 'This user does not belong to any thana.'}}</td>
                                </tr>
                                <tr>
                                    <th>Last login</th>
                                    <td>{{ $user->last_login ? $user->last_login : 'Login data not available.'}}</td>
                                </tr>
                                <tr>
                                    <th>Created At</th>
                                    <td>{{ $user->created_at ? $user->created_at->diffForHumans() : 'Data not available.'}}</td>
                                </tr>
                                <tr>
                                    <th>Updated at</th>
                                    <td>{{ $user->updated_at ? $user->updated_at->diffForHumans() : 'Data not available.'}}</td>
                                </tr>
                                <tr>
                                    <th>Deleted at</th>
                                    <td>{{ $user->deleted_at ? $user->deleted_at->diffForHumans() : 'This user is not yet deleted.'}}</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection