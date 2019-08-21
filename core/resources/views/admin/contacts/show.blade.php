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
                <h1>Details of messages received</h1>
            </div>
        </div>
        <ol class="breadcrumb">
            <li>
                <a href="{{ route('dashboard') }}">
                    <i class="fa fa-fw fa-home"></i>Dashboard
                </a>
            </li>
            <li>
                <a href="#">Details of messages received</a>
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
                            Details
                        </h3>
                        <span class="pull-right">
                            <i class="fa fa-fw fa-times removepanel clickable"></i>
                            <i class="fa fa-fw fa-chevron-up clickable"></i>
                        </span>
                    </div>
                    <div class="panel-body">
                        <div class="col-md-12">
                            <p><b>Message type : </b>{{ $show_everything->contact_type }}</p>
                            <p><b>Person name : </b>{{ $show_everything->person_name }}</p>
                            <p><b>Mobile number : </b>{{ $show_everything->mobile }}</p>
                            <p><b>Email : </b>{{ $show_everything->email }}</p>
                            <p><b>Address : </b>{{ $show_everything->address }}</p>
                            <p><b>Received at : </b>{{ $show_everything->created_at->diffForHumans() }}</p>
	                        @if(!empty($show_everything->privacy))
                            <br>
                            <p><b>Privacy (আপনি কি আপনার নাম ঠিকানা গোপন রাখতে চান?) : </b> YES</p>
	                        @endif
                            <p style="margin-top: 40px">
                                <b>Details </b><br>{!! $show_everything->message !!}
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection