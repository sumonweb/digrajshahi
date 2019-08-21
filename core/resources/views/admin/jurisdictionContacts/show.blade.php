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
                <h1>Jurisdiction contacts Details</h1>
            </div>
            <div class="col-md-6">
                <h1><a href="{{ route('jurisdictionContacts.index') }}" class="btn btn-primary pull-right">Return to all contacts</a></h1>
            </div>
        </div>
        <ol class="breadcrumb">
            <li>
                <a href="{{ route('dashboard') }}">
                    <i class="fa fa-fw fa-home"></i>Dashboard
                </a>
            </li>
            <li>
                <a href="#">Contacts details</a>
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
                            Contacts
                        </h3>
                        <span class="pull-right">
                            <i class="fa fa-fw fa-times removepanel clickable"></i>
                            <i class="fa fa-fw fa-chevron-up clickable"></i>
                        </span>
                    </div>
                    <div class="panel-body">
                        <div class="col-md-12">
                            <table class="table" id="table">
                                <tbody>
                                <tr class="filters">
                                    <th>Jurisdiction Level</th>
                                    <td>{{ $contacts->jurisdictionlevel->name }}</td>
                                </tr>
                                <tr>
                                    <th>District</th>
                                    <td>{{ !empty($contacts->district_id) ? $contacts->district->name : 'Not available' }}</td>
                                </tr>
                                <tr>
                                    <th>Thana</th>
                                    <td>{{ !empty($contacts->thana_id) ? $contacts->thana->name : 'Not available' }}</td>
                                </tr>
                                <tr>
                                    <th>Designation</th>
                                    <td>{{ !empty($contacts->designation) ? $contacts->designation : 'Not available' }}</td>
                                </tr>
                                <tr>
                                    <th>Officer's name</th>
                                    <td>{{ !empty($contacts->person_name) ? $contacts->person_name : 'Not available' }}</td>
                                </tr>
                                <tr>
                                    <th>Mobile number</th>
                                    <td>{{ !empty($contacts->mobile) ? $contacts->mobile : 'Not available' }}</td>
                                </tr>
                                <tr>
                                    <th>Telephone number</th>
                                    <td>{{ !empty($contacts->phone) ? $contacts->phone : 'Not available' }}</td>
                                </tr>
                                <tr>
                                    <th>Fax number</th>
                                    <td>{{ !empty($contacts->fax) ? $contacts->fax : 'Not available' }}</td>
                                </tr>
                                <tr>
                                    <th>Email address</th>
                                    <td>{{ !empty($contacts->email) ? $contacts->email : 'Not available' }}</td>
                                </tr>
                                <tr>
                                    <th>Created by</th>
                                    <td>{{ !empty($contacts->user_id) ? $contacts->user->name : 'Not available' }}</td>
                                </tr>
                                <tr>
                                    <th>Created at</th>
                                    <td>
                                        {{$contacts->created_at->diffForHumans()}}
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