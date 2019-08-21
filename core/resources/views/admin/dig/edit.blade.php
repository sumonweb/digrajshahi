@extends('layouts.master')

@section('customCss')
    <!--page level css -->
    <link href="{{ asset('assets/backend/vendors/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('assets/backend/vendors/summernote/summernote.css') }}" rel="stylesheet" media="screen" type="text/css" >
    <link href="{{asset('assets/backend/css/icheck.css')}}" rel="stylesheet" type="text/css"/>
    <link href="{{ asset('assets/backend/vendors/jasny-bootstrap/css/jasny-bootstrap.css') }}" rel="stylesheet" />
    <link rel="stylesheet" href="{{ asset('assets/backend/vendors/jQuery-File-Upload/css/jquery.fileupload.css') }}" />
    <link rel="stylesheet" href="{{ asset('assets/backend/vendors/jQuery-File-Upload/css/jquery.fileupload-ui.css') }}" />
    <link rel="stylesheet" href="{{asset('assets/backend/vendors/datepicker/css/datepicker.css')}}" />
    <!--end of page level css-->
@endsection

@section('title')

    <section class="content-header">
        <div class="row">
            <div class="col-md-6">
                <h1>Edit DIG details</h1>
            </div>
        </div>
        <ol class="breadcrumb">
            <li>
                <a href="index.html">
                    <i class="fa fa-fw fa-home"></i>Dashboard
                </a>
            </li>
            <li>
                <a href="#">Edit DIG details</a>
            </li>
        </ol>
    </section>

@endsection

@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="panel-body">
                {!! Form::model($dig, ['method'=>'PATCH', 'action'=>['DigController@update', $dig->id], 'class'=>'form-horizontal', 'files'=>true]) !!}
                <div class="cd-block">
                    <div class="cd-content">
                        <div class="form-group">
                            <label class="col-lg-2 control-label">
                                Name of DIG
                                <span class='require'>*</span>
                            </label>
                            <div class="col-lg-6">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-sun-o text-primary"></i>
                                    </span>
                                    <input type="text" placeholder="DIG Name" name="dig_name" id="dig-name" class="form-control" value="{{$dig->dig_name}}">
                                </div>
                            </div>
                            <div class="col-lg-4">
                                @include('admin.includes.form-errors', ['field'=>'dig_name'])
                            </div>
                        </div>
                    </div>
                </div>

                <div class="cd-block">
                    <div class="cd-content">
                        <div class="form-group">
                            <label class="col-lg-2 control-label">Joining date <span class='require'>*</span></label>
                            <div class="col-lg-6">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-calendar text-primary"></i>
                                    </span>
                                    <input class="span2 datepicker form-control" type="text" name="period_from" value="{{$dig->period_from}}" placeholder="Joining Date" id="checkin">
                                </div>
                            </div>
                            <div class="col-lg-4">
                                @include('admin.includes.form-errors', ['field'=>'period_from'])
                            </div>
                        </div>
                    </div>
                </div>

                <div class="cd-block">
                    <div class="cd-content">
                        <div class="form-group">
                            <label class="col-lg-2 control-label">Leaving date <span class='require'>*</span></label>
                            <div class="col-lg-6">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-calendar text-primary"></i>
                                    </span>
                                    <input class="span2 datepicker form-control" type="text" name="period_to" value="" placeholder="Leaving Date" id="leaving">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-lg-2 control-label">Image of DIG <span class='require'>*</span></label>
                    <div class="col-lg-6">
                        <div class="fileinput fileinput-new" data-provides="fileinput">
                            <div class="fileinput-new thumbnail" style="width: 200px; height: 150px;">
                                <img data-src="holder.js/200x150" alt="..."></div>
                            @if($dig->photo)
                                <img src="{{ asset('assets/uploads/dig/' . $dig->photo)}}" style="max-width: 200px;max-height: 150px;margin-left: 15px;float: right;">
                            @else
                                <p style="float: right; margin: 60px 20px;">{{'DIG image not available'}}</p>
                            @endif
                            <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px;"></div>
                            <div>
                                   <span class="btn btn-primary btn-file">
                                       <span class="fileinput-new">Select image</span>
                                       <span class="fileinput-exists">Change</span>
                                       <input type="file" name="photo">
                                   </span>
                                <a href="#" class="btn btn-primary fileinput-exists" data-dismiss="fileinput">Remove</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        @include('admin.includes.form-errors', ['field'=>'photo'])
                    </div>
                </div>

                <div class="cd-block">
                    <div class="cd-content">
                        <div class="form-group">
                            <label class="col-lg-2 control-label">
                                Message of DIG
                                <span class='require'>*</span>
                            </label>
                            <div class="col-lg-6">
                                <div class="panel-body" style="padding: 0px !important;">
                                    <textarea class="summernote edi-css" id="summernote" placeholder="write the message here..." name="message">{{$dig->message}}</textarea>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                @include('admin.includes.form-errors', ['field'=>'message'])
                            </div>
                        </div>
                    </div>
                </div>

                <div class="cd-block">
                    <div class="cd-content">
                        <div class="form-group">
                            <label class="col-lg-2 control-label">
                                Status
                                <span class='require'>*</span>
                            </label>
                            <div class="col-lg-6">
                                <select class="form-control " title="Select status..." name="status" id="group">
                                    <option value="">select Status</option>

                                    <option value="1">Activate</option>

                                    <option value="0">Deactivate</option>
                                </select>
                            </div>
                            <div class="col-lg-4">
                                @include('admin.includes.form-errors', ['field'=>'status'])
                            </div>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                        <button class="btn btn-primary" type="submit">update</button>
                    </div>
                </div>
                {!! Form::close() !!}
            </div>
        </div>
    </div>
@endsection

@section('customJs')
    <script src="{{ asset('assets/backend/vendors/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js') }}" type="text/javascript"></script>
    <script src="{{ asset('assets/backend/vendors/ckeditor/ckeditor.js') }}" type="text/javascript" ></script>
    <script src="{{ asset('assets/backend/vendors/ckeditor/adapters/jquery.js') }}" type="text/javascript" ></script>
    <script src="{{ asset('assets/backend/vendors/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.js') }}" type="text/javascript" ></script>
    <script src="{{ asset('assets/backend/vendors/summernote/summernote.min.js') }}" type="text/javascript" ></script>
    <script src="{{ asset('assets/backend/js/custom_js/form_editors.js') }}" type="text/javascript"></script>
    <script src="{{asset('assets/backend/vendors/jasny-bootstrap/js/jasny-bootstrap.js')}}" type="text/javascript"></script>
    <script src="{{asset('assets/backend/vendors/datepicker/js/bootstrap-datepicker.js')}}" type="text/javascript"></script>
    <script type="text/javascript">
        $('#checkin').datepicker({
            format: 'yyyy-mm-dd'
        });
        $('#leaving').datepicker({
            format: 'yyyy-mm-dd'
        });
    </script>
@endsection