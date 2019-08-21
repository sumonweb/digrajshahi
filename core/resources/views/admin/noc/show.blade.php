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
                <h1>NOC details</h1>
            </div>
            <div class="col-md-6">
                <h1><a href="{{ route('noc.index') }}" class="btn btn-primary pull-right">Return to all NOC</a></h1>
            </div>
        </div>
        <ol class="breadcrumb">
            <li>
                <a href="index.html">
                    <i class="fa fa-fw fa-home"></i>Dashboard
                </a>
            </li>
            <li>
                <a href="#">NOC details</a>
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
                            NOC details
                        </h3>
                        <span class="pull-right">
                            <i class="fa fa-fw fa-times removepanel clickable"></i>
                            <i class="fa fa-fw fa-chevron-up clickable"></i>
                        </span>
                    </div>
                    <div class="panel-body">
                        <div class="col-md-5 text-center">
                            @if($noc->noc_img)
                                <img src="{{asset('assets/uploads/noc/'.$noc->noc_img)}}" alt="" width="100%" style="margin-bottom: 25px;">
                                <a href="{{asset('assets/uploads/noc/'.$noc->noc_img)}}" class="btn btn-primary btn-sm" download>Download file</a>
                            @else
                                <p style="float: right; margin: 60px 20px;">{{'NOC file not available'}}</p>
                            @endif
                        </div>
                        <div class="col-md-6">
                            <table class="table" id="table">
                                <tbody>
                                <tr class="filters">
                                    <th>NOC name</th>
                                    <td>{{ $noc->noc_name }}</td>
                                </tr>
                                <tr class="filters">
                                    <th>BP batch number</th>
                                    <td>{{ $noc->bp_no }}</td>
                                </tr>
                                <tr>
                                    <th>Jurisdiction Level</th>
                                    <td>{{ $noc->jurisdictionlevel->name }}</td>
                                </tr>
                                @if(!empty($noc->district_id))
                                    <tr>
                                        <th>District</th>
                                        <td>{{ $noc->district->name }}</td>
                                    </tr>
                                @endif
                                @if(!empty($noc->thana_id))
                                    <tr>
                                        <th>Thana</th>
                                        <td>{{ $noc->thana->name }}</td>
                                    </tr>
                                @endif
                                <tr>
                                    <th>Created by</th>
                                    <td>{{ $noc->user->name  }}</td>
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