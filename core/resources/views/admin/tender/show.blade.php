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
                <h1>Tender details</h1>
            </div>
            <div class="col-md-6">
                <h1><a href="{{ route('tender.index') }}" class="btn btn-primary pull-right">Return to all Tenders</a></h1>
            </div>
        </div>
        <ol class="breadcrumb">
            <li>
                <a href="index.html">
                    <i class="fa fa-fw fa-home"></i>Dashboard
                </a>
            </li>
            <li>
                <a href="#">Tender details</a>
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
                            Tender details
                        </h3>
                        <span class="pull-right">
                            <i class="fa fa-fw fa-times removepanel clickable"></i>
                            <i class="fa fa-fw fa-chevron-up clickable"></i>
                        </span>
                    </div>
                    <div class="panel-body">
                        <div class="col-md-5 text-center" style="margin-top: 100px;">
                            @if($tender->tender_file)
                                <a href="{{asset('assets/uploads/tenders/'.$tender->tender_file)}}" class="btn btn-primary btn-sm" target="_blank">View file</a>
                                <a href="{{asset('assets/uploads/tenders/'.$tender->tender_file)}}" class="btn btn-primary btn-sm" download>Download file</a>
                            @else
                                <p style="float: right; margin: 60px 20px;">{{'Tender file not available'}}</p>
                            @endif
                        </div>
                        <div class="col-md-6">
                            <table class="table" id="table">
                                <tbody>
                                <tr class="filters">
                                    <th>Tender title</th>
                                    <td>{{ $tender->tender_title }}</td>
                                </tr>
                                <tr>
                                    <th>Start date</th>
                                    <td>{{ $tender->start_date }}</td>
                                </tr>
                                <tr>
                                    <th>End Date</th>
                                    <td>{{ $tender->end_date }}</td>
                                </tr>
                                <tr>
                                    <th>Jurisdiction Level</th>
                                    <td>{{ $tender->jurisdictionlevel->name }}</td>
                                </tr>
                                @if(!empty($tender->district_id))
                                <tr>
                                    <th>District</th>
                                    <td>{{ $tender->district->name }}</td>
                                </tr>
                                @endif
                                @if(!empty($tender->thana_id))
                                <tr>
                                    <th>Thana</th>
                                    <td>{{ $tender->thana->name }}</td>
                                </tr>
                                @endif
                                <tr>
                                    <th>Created by</th>
                                    <td>{{ $tender->user->name  }}</td>
                                </tr>
                                <tr>
                                    <th>Approved by</th>
                                    <td>{{ !empty($tender->approved_by) ? $tender->approver->name : 'No approver details'}}</td>
                                </tr>
                                <tr>
                                    <th>Approval date</th>
                                    <td>{{ !empty($tender->approval_date) ? date('d/m/Y', strtotime($tender->approval_date)) : 'No approval date'}}</td>
                                </tr>
                                <tr>
                                    {{--<th>Updated at</th>--}}
                                    {{--<td>{{ $tender->status ? $user->updated_at->diffForHumans() : 'Data not available.'}}</td>--}}
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