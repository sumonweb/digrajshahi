@extends('layouts.master')

@section('customCss')
    <link href="{{ asset('assets/backend/vendors/jasny-bootstrap/css/jasny-bootstrap.css') }}" rel="stylesheet" />
    <link href="{{ asset('assets/backend/vendors/bootstrapvalidator/css/bootstrapValidator.min.css') }}" rel="stylesheet"/>
    <link href="{{ asset('assets/backend/vendors/iCheck/css/minimal/blue.css') }}" rel="stylesheet"/>
    <link href="{{asset('assets/backend/css/custom_css/addnew_user.css')}}" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="{{asset('assets/backend/vendors/datepicker/css/datepicker.css')}}" />
@endsection

@section('title')

    <section class="content-header">
        <h1>Edit tender</h1>
        <ol class="breadcrumb">
            <li>
                <a href="index.html">
                    <i class="fa fa-fw fa-home"></i>Dashboard
                </a>
            </li>
            <li>
                <a href="#">Edit tender</a>
            </li>
        </ol>
    </section>

@endsection

@section('content')

    <section>
        <div class="row">
            <div class="col-md-12">
                <div class="panel-body">
                    {!! Form::model($tender, ['method'=>'PUT', 'action'=>['TenderController@update', $tender->id], 'class'=>'form-horizontal', 'files'=>true]) !!}

                    <div class="cd-block">
                        <div class="cd-content">
                            <div class="form-group">
                                <label class="col-lg-2 control-label">
                                    Tender title <span class='require'>*</span>
                                </label>
                                <div class="col-lg-6">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="fa fa-fw fa-user-md text-primary"></i>
                                        </span>
                                        <input type="text" placeholder="Tender title" name="tender_title" id="tender-title" class="form-control" value="{{$tender->tender_title}}">
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    @include('admin.includes.form-errors', ['field'=>'tender_title'])
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="cd-block">
                        <div class="cd-content">
                            <div class="form-group">
                                <label class="col-lg-2 control-label">Start date <span class='require'>*</span></label>
                                <div class="col-lg-6">
                                    <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-calendar text-primary"></i>
                                    </span>
                                        <input class="span2 datepicker form-control" type="text" name="start_date" value="{{ $tender->start_date }}" placeholder="Start Date" id="start-date">
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    @include('admin.includes.form-errors', ['field'=>'start_date'])
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="cd-block">
                        <div class="cd-content">
                            <div class="form-group">
                                <label class="col-lg-2 control-label">End date <span class='require'>*</span></label>
                                <div class="col-lg-6">
                                    <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-calendar text-primary"></i>
                                    </span>
                                        <input class="span2 datepicker form-control" type="text" name="end_date" value="{{$tender->end_date}}" placeholder="End Date" id="end-date">
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    @include('admin.includes.form-errors', ['field'=>'end_date'])
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-2 control-label">Upload tender file  <span class='require'>*</span></label>
                        <div class="col-lg-6">
                            <div class="fileinput fileinput-new" data-provides="fileinput">
                                <div class="fileinput-new thumbnail" style="width: 200px; height: 150px;">
                                    <img data-src="holder.js/200x150" alt="..."></div>
                                <div class="" style="float:right; margin-left: 20px;">
                                    @if(!empty($tender->tender_file))
                                        <a href="{{asset('assets/uploads/tenders/'.$tender->tender_file)}}" class="btn btn-primary btn-sm" target="_blank">View file</a>
                                        <a href="{{asset('assets/uploads/tenders/'.$tender->tender_file)}}" class="btn btn-primary btn-sm" download>Download file</a>
                                    @else
                                        <p style="float: right; margin: 60px 20px;">{{'Tender file not available'}}</p>
                                    @endif
                                </div>
                                <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px;"></div>
                                <div>
                                    <span class="btn btn-primary btn-file">
                                        <span class="fileinput-new">Select image</span>
                                        <span class="fileinput-exists">Change</span>
                                        <input type="file" name="tender_file">
                                    </span>
                                    <a href="#" class="btn btn-primary fileinput-exists" data-dismiss="fileinput">Remove</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            @include('admin.includes.form-errors', ['field'=>'tender_file'])
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-lg-offset-2 col-lg-10">
                            <button class="btn btn-primary" type="submit">Update tender</button>
                        </div>
                    </div>

                    {!! Form::close() !!}
                </div>
            </div>
        </div>
    </section>

@endsection

@section('customJs')
    <script src="{{asset('assets/backend/js/custom_js/addnew_user.js')}}" type="text/javascript"></script>
    <script src="{{asset('assets/backend/vendors/iCheck/js/icheck.js')}}" type="text/javascript"></script>
    <script src="{{asset('assets/backend/vendors/jasny-bootstrap/js/jasny-bootstrap.js')}}" type="text/javascript"></script>
    <script src="{{asset('assets/backend/vendors/bootstrapvalidator/js/bootstrapValidator.min.js')}}" type="text/javascript"></script>
    <script src="{{asset('assets/backend/vendors/datepicker/js/bootstrap-datepicker.js')}}" type="text/javascript"></script>
    <script type="text/javascript">
        $('#start-date').datepicker({
            format: 'yyyy-mm-dd'
        });
        $('#end-date').datepicker({
            format: 'yyyy-mm-dd'
        });
    </script>
@endsection