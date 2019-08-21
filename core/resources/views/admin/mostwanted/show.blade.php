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
                <h1>Most wanted</h1>
            </div>
            <div class="col-md-6">
                <h1><a href="{{ route('mostWanted.index') }}" class="btn btn-primary pull-right">Return to wanted list</a></h1>
            </div>
        </div>
        <ol class="breadcrumb">
            <li>
                <a href="{{ route('dashboard') }}">
                    <i class="fa fa-fw fa-home"></i>Dashboard
                </a>
            </li>
            <li>
                <a href="#">Most wanted person details</a>
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
                            Most wanted person details
                        </h3>
                        <span class="pull-right">
                            <i class="fa fa-fw fa-times removepanel clickable"></i>
                            <i class="fa fa-fw fa-chevron-up clickable"></i>
                        </span>
                    </div>
                    <div class="panel-body">
                        <div class="col-md-5">
                            @if(!empty($wanted->photo))
                                <img class="img img-responsive img-rounded" src="{{ asset('assets/uploads/mostwanted/' . $wanted->photo) }}" alt="">
                            @else
                                {{"Image not available."}}
                            @endif
                        </div>
                        <div class="col-md-6">
                            <table class="table" id="table">
                                <tbody>
                                <tr class="filters">
                                    <th>Name</th>
                                    <td>{{ $wanted->name }}</td>
                                </tr>
                                <tr>
                                    <th>Additional name</th>
                                    <td>{{ !empty($wanted->additional_name) ? $wanted->additional_name : 'No additional name' }}</td>
                                </tr>
                                <tr>
                                    <th>Father's name</th>
                                    <td>{{ !empty($wanted->father_name) ? $wanted->father_name : 'Not available' }}</td>
                                </tr>
                                <tr>
                                    <th>Address</th>
                                    <td>{{ !empty($wanted->address) ? $wanted->address : 'Not available' }}</td>
                                </tr>
                                <tr>
                                    <th>Created by</th>
                                    <td>{{ $wanted->user->name }}</td>
                                </tr>
                                <tr>
                                    <th>Created at</th>
                                    <td>{{ $wanted->created_at->diffForHumans() }}</td>
                                </tr>
                                <tr>
                                    <th>Current status</th>
                                    <td>{{ $wanted->status == 1 ? 'Still wanted' : 'Deactivated' }}</td>
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