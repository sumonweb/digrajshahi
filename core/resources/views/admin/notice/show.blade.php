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
                <h1>Notice details</h1>
            </div>
            <div class="col-md-6">
                <h1><a href="{{ route('notice.index') }}" class="btn btn-primary pull-right">Return to all Notices</a></h1>
            </div>
        </div>
        <ol class="breadcrumb">
            <li>
                <a href="{{ route('dashboard') }}">
                    <i class="fa fa-fw fa-home"></i>Dashboard
                </a>
            </li>
            <li>
                <a href="#">Notice details</a>
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
                            Notice details
                        </h3>
                        <span class="pull-right">
                            <i class="fa fa-fw fa-times removepanel clickable"></i>
                            <i class="fa fa-fw fa-chevron-up clickable"></i>
                        </span>
                    </div>
                    <div class="panel-body">
                        <div class="col-md-5 text-center" style="margin-top: 100px;">
                            @if($notice->notice_file)
                                <a href="{{asset('assets/uploads/notices/'.$notice->notice_file)}}" class="btn btn-primary btn-sm" target="_blank">View file</a>
                                <a href="{{asset('assets/uploads/notices/'.$notice->notice_file)}}" class="btn btn-primary btn-sm" download>Download file</a>
                            @else
                                <p style="float: right; margin: 60px 20px;">{{'Notice file not available'}}</p>
                            @endif
                        </div>
                        <div class="col-md-6">
                            <table class="table" id="table">
                                <tbody>
                                <tr class="filters">
                                    <th>Notice title</th>
                                    <td>{{ $notice->notice_title }}</td>
                                </tr>
                                <tr class="filters">
                                    <th>Notice type</th>
                                    <td>{{ $notice->notice_type == 'notice' ? 'Notice' : 'Office order' }}</td>
                                </tr>
                                <tr>
                                    <th>Jurisdiction Level</th>
                                    <td>{{ $notice->jurisdictionlevel->name }}</td>
                                </tr>
                                @if(!empty($notice->district_id))
                                    <tr>
                                        <th>District</th>
                                        <td>{{ $notice->district->name }}</td>
                                    </tr>
                                @endif
                                @if(!empty($notice->thana_id))
                                    <tr>
                                        <th>Thana</th>
                                        {{--<td>{{ $notice->thana->name }}</td>--}}
                                    </tr>
                                @endif
                                <tr>
                                    <th>Created by</th>
                                    <td>{{ $notice->user->name  }}</td>
                                </tr>
                                <tr>
                                    <th>Approved by</th>
                                    <td>{{ !empty($notice->approved_by) ? $notice->approver->name : 'No approver details'}}</td>
                                </tr>
                                <tr>
                                    <th>Approval date</th>
                                    <td>{{ !empty($notice->approval_date) ? date('d/m/Y', strtotime($notice->approval_date)) : 'No approval date'}}</td>
                                </tr>
                                <tr>
                                    {{--<th>Updated at</th>--}}
                                    {{--<td>{{ $tender->status ? $user->updated_at->diffForHumans() : 'Data not available.'}}</td>--}}
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="col-md-12">
                            {!! !empty($notice->notice) ? 'Notice : '. $notice->notice : ' ' !!}
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection