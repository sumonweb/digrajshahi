@extends('layouts.master')

@section('customCss')
    <link href="{{ asset('assets/backend/vendors/jasny-bootstrap/css/jasny-bootstrap.css') }}" rel="stylesheet" />
    <link href="{{ asset('assets/backend/vendors/bootstrapvalidator/css/bootstrapValidator.min.css') }}" rel="stylesheet"/>
    <link href="{{ asset('assets/backend/vendors/iCheck/css/minimal/blue.css') }}" rel="stylesheet"/>
    <link href="{{asset('assets/backend/css/custom_css/addnew_user.css')}}" rel="stylesheet" type="text/css"/>
@endsection

@section('title')

    <section class="content-header">
        <h1>Create new slider</h1>
        <ol class="breadcrumb">
            <li>
                <a href="index.html">
                    <i class="fa fa-fw fa-home"></i>Dashboard
                </a>
            </li>
            <li>
                <a href="#">Create new slider</a>
            </li>
        </ol>
    </section>

@endsection

@section('content')

    <section>
        <div class="row">
            <div class="col-md-12">
                <div class="panel-body">
                    {!! Form::open(['method'=>'POST', 'action'=>'SliderController@store', 'class'=>'form-horizontal', 'files'=>true]) !!}

                    <div class="form-group">
                        <label class="col-lg-2 control-label">Upload slider image  <span class='require'>*</span></label>
                        <div class="col-lg-6">
                            <div class="fileinput fileinput-new" data-provides="fileinput">
                                <div class="fileinput-new thumbnail" style="width: 200px; height: 150px;">
                                    <img data-src="holder.js/200x150" alt="..."></div>
                                <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px;"></div>
                                <div>
                                    <span class="btn btn-primary btn-file">
                                        <span class="fileinput-new">Select image</span>
                                        <span class="fileinput-exists">Change</span>
                                        <input type="file" name="slider_image">
                                    </span>
                                    <a href="#" class="btn btn-primary fileinput-exists" data-dismiss="fileinput">Remove</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            @include('admin.includes.form-errors', ['field'=>'slider_image'])
                        </div>
                    </div>

                    <div class="cd-block">
                        <div class="cd-content">
                            <div class="form-group">
                                <label class="col-lg-2 control-label">
                                    Caption
                                </label>
                                <div class="col-lg-6">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="fa fa-fw fa-user-md text-primary"></i>
                                        </span>
                                        <input type="text" placeholder="Caption" name="caption" id="caption" class="form-control">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="cd-block">
                        <div class="cd-content">
                            <div class="form-group">
                                <label class="control-label  col-md-2">Status  <span class='require'>*</span></label>
                                <div class="col-md-6">
                                    <select name="status" id="status" class="form-control select2">
                                        <option>Please select</option>
                                        <option value="1" selected>Active</option>
                                        <option value="0">Inactive</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-lg-offset-2 col-lg-10">
                            <button class="btn btn-primary" type="submit">Create slider</button>
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
    {{--<script src="{{asset('assets/backend/vendors/bootstrapvalidator/js/bootstrapValidator.min.js')}}" type="text/javascript"></script>--}}
@endsection