@extends('layouts.master')

@section('customCss')
    <style type="text/css">
        .table tr td, .table tr th{
            border: 0px solid !important;
        }
        .message p{
            font-size: 14px;
            font-family: Helvetica;
        }
    </style>
@endsection

@section('title')
    <section class="content-header">
        <div class="row">
            <div class="col-md-6">
                <h1>Deputy Inspector General Details</h1>
            </div>
            <div class="col-md-6">
                <h1><a href="{{ route('dig.index') }}" class="btn btn-primary pull-right">Return to all DIG</a></h1>
            </div>
        </div>
        <ol class="breadcrumb">
            <li>
                <a href="{{ route('dashboard') }}">
                    <i class="fa fa-fw fa-home"></i>Dashboard
                </a>
            </li>
            <li>
                <a href="#">DIG details</a>
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
                            Deputy Inspector General
                        </h3>
                        <span class="pull-right">
                            <i class="fa fa-fw fa-times removepanel clickable"></i>
                            <i class="fa fa-fw fa-chevron-up clickable"></i>
                        </span>
                    </div>
                    <div class="panel-body">
                        <div class="col-md-5 text-center">
                            @if($dig->photo)
                                <img src="{{asset('assets/uploads/dig/'.$dig->photo)}}" alt="" width="100%" style="margin-bottom: 25px;">
                                <a href="{{asset('assets/uploads/dig/'.$dig->photo)}}" class="btn btn-primary btn-sm" download>Download file</a>
                            @else
                                <p style="float: right; margin: 60px 20px;">{{'DIG image not available'}}</p>
                            @endif
                        </div>
                        <div class="col-md-6">
                            <table class="table" id="table">
                                <tbody>
                                <tr class="filters">
                                    <th>DIG name</th>
                                    <td>{{ $dig->dig_name }}</td>
                                </tr>
                                <tr>
                                    <th>Joined on</th>
                                    <td>{{ date('d/m/Y', strtotime($dig->period_from)) }}</td>
                                </tr>
                                <tr>
                                    <th>Left on</th>
                                    <td>{{$dig->period_to ? date('d/m/Y', strtotime($dig->period_to)) : 'Still on duty'}}</td>
                                </tr>
                                <tr>
                                    <th>Status</th>
                                    <td>
                                        {{ $dig->status == 1 ? 'Active' : 'Deactivated' }}
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="col-md-12 message" style="margin: 30px 10px;">
                            <p>{!! $dig->message !!}</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection