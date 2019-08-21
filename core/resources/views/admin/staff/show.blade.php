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
                <h1>Staff details</h1>
            </div>
            <div class="col-md-6">
                <h1><a href="{{ route('staff.index') }}" class="btn btn-primary pull-right">Return to all staff</a></h1>
            </div>
        </div>
        <ol class="breadcrumb">
            <li>
                <a href="{{ route('dashboard') }}">
                    <i class="fa fa-fw fa-home"></i>Dashboard
                </a>
            </li>
            <li>
                <a href="#">Staff details</a>
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
                            Staff details
                        </h3>
                        <span class="pull-right">
                            <i class="fa fa-fw fa-times removepanel clickable"></i>
                            <i class="fa fa-fw fa-chevron-up clickable"></i>
                        </span>
                    </div>
                    <div class="panel-body">
                        <div class="col-md-5 text-center">
                            @if($staff->photo)
                                <img src="{{asset('assets/uploads/staff/'.$staff->photo)}}" alt="" width="100%" style="margin-bottom: 25px;">
                                <a href="{{asset('assets/uploads/staff/'.$staff->photo)}}" class="btn btn-primary btn-sm" download>Download file</a>
                            @else
                                <p style="float: right; margin: 60px 20px;">{{'Staff image not available'}}</p>
                            @endif
                        </div>
                        <div class="col-md-6">
                            <table class="table" id="table">
                                <tbody>
                                <tr class="filters">
                                    <th>Staff name</th>
                                    <td>{{ $staff->staff_name }}</td>
                                </tr>
                                @if(!empty($staff->surname))
                                <tr class="filters">
                                    <th>Surname</th>
                                    <td>{{ $staff->surname }}</td>
                                </tr>
                                @endif
                                <tr class="filters">
                                    <th>BP number</th>
                                    <td>{{ $staff->bp_no }}</td>
                                </tr>
                                <tr>
                                    <th>Designation</th>
                                    <td>{{ $staff->designation }}</td>
                                </tr>
                                @if(!empty($staff->email))
                                    <tr>
                                        <th>Email</th>
                                        <td>{{ $staff->email }}</td>
                                    </tr>
                                @endif
                                <tr>
                                    <th>Mobile</th>
                                    <td>{{ $staff->mobile }}</td>
                                </tr>
                                @if(!empty($staff->phone))
                                    <tr>
                                        <th>Office telephone</th>
                                        <td>{{ $staff->phone }}</td>
                                    </tr>
                                @endif
                                @if(!empty($staff->department))
                                    <tr>
                                        <th>Department</th>
                                        <td>{{ $staff->department }}</td>
                                    </tr>
                                @endif
                                <tr>
                                    <th>Status</th>
                                    <td>
                                        {{ $staff->status == 1 ? 'Active' : 'Deactivated' }}
                                    </td>
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