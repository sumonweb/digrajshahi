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
                <h1>Superintendent of Police Details</h1>
            </div>
            <div class="col-md-6">
                <h1><a href="{{ route('sp.index') }}" class="btn btn-primary pull-right">Return to all SP</a></h1>
            </div>
        </div>
        <ol class="breadcrumb">
            <li>
                <a href="{{ route('dashboard') }}">
                    <i class="fa fa-fw fa-home"></i>Dashboard
                </a>
            </li>
            <li>
                <a href="#">SP details</a>
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
                            Superintendent of Police
                        </h3>
                        <span class="pull-right">
                            <i class="fa fa-fw fa-times removepanel clickable"></i>
                            <i class="fa fa-fw fa-chevron-up clickable"></i>
                        </span>
                    </div>
                    <div class="panel-body">
                        <div class="col-md-5 text-center">
                            @if($sp->photo)
                                <img src="{{asset('assets/uploads/sp/'.$sp->photo)}}" alt="" width="100%" style="margin-bottom: 25px;">
                            @else
                                <p style="float: right; margin: 60px 20px;">{{'SP image not available'}}</p>
                            @endif
                        </div>
                        <div class="col-md-6">
                            <table class="table" id="table">
                                <tbody>
                                <tr class="filters">
                                    <th>SP name</th>
                                    <td>{{ $sp->sp_name }}</td>
                                </tr>
                                <tr>
                                    <th>District</th>
                                    <td>{{$sp->district->name}}</td>
                                </tr>
                                <tr>
                                    <th>Joined on</th>
                                    <td>{{ date('d/m/Y', strtotime($sp->period_from)) }}</td>
                                </tr>
                                <tr>
                                    <th>Left on</th>
                                    <td>{{$sp->period_to ? date('d/m/Y', strtotime($sp->period_to)) : 'Still on duty'}}</td>
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