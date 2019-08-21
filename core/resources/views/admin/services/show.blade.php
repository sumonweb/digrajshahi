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
                <h1>Service details</h1>
            </div>
            <div class="col-md-6">
                <h1><a href="{{ route('services.index') }}" class="btn btn-primary pull-right">Return to all services</a></h1>
            </div>
        </div>
        <ol class="breadcrumb">
            <li>
                <a href="{{ route('dashboard') }}">
                    <i class="fa fa-fw fa-home"></i>Dashboard
                </a>
            </li>
            <li>
                <a href="#">Service details</a>
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
                            Service details
                        </h3>
                        <span class="pull-right">
                            <i class="fa fa-fw fa-times removepanel clickable"></i>
                            <i class="fa fa-fw fa-chevron-up clickable"></i>
                        </span>
                    </div>
                    <div class="panel-body">
                        <div class="col-md-5 text-center">
                            @if($service->service_image)
                                <img class="img img-responsive" src="{{ asset('assets/uploads/services/'.$service->service_image) }}" alt="">
                            @else
                                <p style="float: right; margin: 60px 20px;">{{'Service image not available'}}</p>
                            @endif
                        </div>
                        <div class="col-md-6">
                            <table class="table" id="table">
                                <tbody>
                                <tr class="filters">
                                    <th>Service name</th>
                                    <td>{{ $service->service_name }}</td>
                                </tr>
                                <tr>
                                    <th>Service icon used</th>
                                    <td style="font-size: 30px;">{!! $service->service_icon !!}</td>
                                </tr>
                                <tr>
                                    <th>Created at</th>
                                    <td>{{ $service->created_at->diffForHumans() }}</td>
                                </tr>
                                <tr>
                                    <th>Status</th>
                                    <td>{{ $service->status==1 ? 'Active' : 'Deactivated'}}</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="col-md-12" style="margin-top: 40px !important;">
                            {!! !empty($service->description) ? 'Description : '. $service->description : ' ' !!}
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection