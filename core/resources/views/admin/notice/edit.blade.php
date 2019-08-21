@extends('layouts.master')

@section('customCss')
    <!--page level css -->
    <link href="{{ asset('assets/backend/vendors/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('assets/backend/vendors/summernote/summernote.css') }}" rel="stylesheet" media="screen" type="text/css" >
    <link href="{{asset('assets/backend/css/icheck.css')}}" rel="stylesheet" type="text/css"/>
    <link href="{{ asset('assets/backend/vendors/jasny-bootstrap/css/jasny-bootstrap.css') }}" rel="stylesheet" />
    <style>
        /* The container */
        .notice_type {
            display: block;
            position: relative;
            padding-left: 35px;
            margin-bottom: 12px;
            cursor: pointer;
            font-size: 14px;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
            float: left;
            margin-right: 40px;
        }

        .notice_radio{
            margin-top: 7px;
        }

        /* Hide the browser's default radio button */
        .notice_type input {
            position: absolute;
            opacity: 0;
            cursor: pointer;
        }

        /* Create a custom radio button */
        .checkmark {
            position: absolute;
            top: 3px;
            left: 0;
            height: 15px;
            width: 15px;
            background-color: #eee;
            border-radius: 50%;
        }

        /* On mouse-over, add a grey background color */
        .notice_type:hover input ~ .checkmark {
            background-color: #ccc;
        }

        /* When the radio button is checked, add a blue background */
        .notice_type input:checked ~ .checkmark {
            background-color: #2196F3;
        }

        /* Create the indicator (the dot/circle - hidden when not checked) */
        .checkmark:after {
            content: "";
            position: absolute;
            display: none;
        }

        /* Show the indicator (dot/circle) when checked */
        .notice_type input:checked ~ .checkmark:after {
            display: block;
        }

        /* Style the indicator (dot/circle) */
        .notice_type .checkmark:after {
            top: 4px;
            left: 4px;
            width: 7px;
            height: 7px;
            border-radius: 50%;
            background: white;
        }
    </style>
    <!--end of page level css-->
@endsection

@section('title')

    <section class="content-header">
        <div class="row">
            <div class="col-md-6">
                <h1>Edit notice</h1>
            </div>
        </div>
        <ol class="breadcrumb">
            <li>
                <a href="{{ route('dashboard') }}">
                    <i class="fa fa-fw fa-home"></i>Dashboard
                </a>
            </li>
            <li>
                <a href="#">Edit notice</a>
            </li>
        </ol>
    </section>

@endsection

@section('content')
    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="panel-body">
                    {!! Form::model($notice, ['method'=>'PUT', 'action'=>['NoticeController@update', $notice->id], 'class'=>'form-horizontal', 'files'=>true]) !!}
                    <div class="cd-block">
                        <div class="cd-content">
                            <div class="form-group">
                                <label class="col-lg-2 control-label">
                                    Notice type
                                    <span class='require'>*</span>
                                </label>
                                <div class="col-lg-6 notice_radio">
                                    <label class="notice_type">Notice
                                        <input type="radio" {{$notice->notice_type == 'notice' ? 'checked' : ''}} name="notice_type" value="notice">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="notice_type">Office order
                                        <input type="radio" {{$notice->notice_type == 'office_order' ? 'checked' : ''}} name="notice_type" value="office_order">
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                                <div class="col-lg-4">
                                    @include('admin.includes.form-errors', ['field'=>'notice_title'])
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="cd-block">
                        <div class="cd-content">
                            <div class="form-group">
                                <label class="col-lg-2 control-label">
                                    Notice title
                                    <span class='require'>*</span>
                                </label>
                                <div class="col-lg-6">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="fa fa-sun-o text-primary"></i>
                                        </span>
                                        <input type="text" placeholder="Notice title" name="notice_title" value="{{$notice->notice_title}}" id="notice-title" class="form-control">
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    @include('admin.includes.form-errors', ['field'=>'notice_title'])
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-2 control-label">upload notice file</label>
                        <div class="col-lg-6">
                            <div class="fileinput fileinput-new" data-provides="fileinput">
                                <div class="fileinput-new thumbnail" style="width: 200px; height: 150px;">
                                    <img data-src="holder.js/200x150" alt="..."></div>
                                <div class="" style="float:right; margin-left: 20px;">
                                @if(!empty($notice->notice_file))
                                    <a href="{{asset('assets/uploads/notices/'.$notice->notice_file)}}" class="btn btn-primary btn-sm" target="_blank">View file</a>
                                    <a href="{{asset('assets/uploads/notices/'.$notice->notice_file)}}" class="btn btn-primary btn-sm" download>Download file</a>
                                @else
                                    <p style="float: right; margin: 60px 20px;">{{'Notice file not available'}}</p>
                                @endif
                                </div>
                                <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px;"></div>
                                <div>
                                   <span class="btn btn-primary btn-file">
                                       <span class="fileinput-new">Select image</span>
                                       <span class="fileinput-exists">Change</span>
                                       <input type="file" name="notice_file">
                                   </span>
                                    <a href="#" class="btn btn-primary fileinput-exists" data-dismiss="fileinput">Remove</a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="cd-block">
                        <div class="cd-content">
                            <div class="form-group">
                                <label class="col-lg-2 control-label">
                                    Notice
                                </label>
                                <div class="col-lg-6">
                                    <div class="panel-body"  style="padding: 0px !important;">
                                        <textarea class=" edi-css" id="summernote" placeholder="write the content here..." name="notice">{!! !empty($notice->notice) ? $notice->notice : '' !!}</textarea>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <br><br>
                    <div class="form-group">
                        <div class="col-lg-offset-2 col-lg-10">
                            <button class="btn btn-primary" type="submit">Update</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

@endsection

@section('customJs')
    <script src="{{ asset('assets/backend/vendors/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js') }}" type="text/javascript"></script>
    <script src="{{ asset('assets/backend/vendors/ckeditor/ckeditor.js') }}" type="text/javascript" ></script>
    <script src="{{ asset('assets/backend/vendors/ckeditor/adapters/jquery.js') }}" type="text/javascript" ></script>
    <script src="{{ asset('assets/backend/vendors/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.js') }}" type="text/javascript" ></script>
    <script src="{{ asset('assets/backend/vendors/summernote/summernote.min.js') }}" type="text/javascript" ></script>
    <script src="{{ asset('assets/backend/js/custom_js/form_editors.js') }}" type="text/javascript"></script>
    <script src="{{asset('assets/backend/vendors/jasny-bootstrap/js/jasny-bootstrap.js')}}" type="text/javascript"></script>
    <!-- end of page level js -->
@endsection