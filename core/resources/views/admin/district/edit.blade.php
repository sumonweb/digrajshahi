@extends('layouts.master')

@section('customCss')
	<!--page level css -->
	<link href="{{ asset('assets/backend/vendors/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css') }}" rel="stylesheet" type="text/css" />
	<link href="{{ asset('assets/backend/vendors/summernote/summernote.css') }}" rel="stylesheet" media="screen" type="text/css" >
	<link href="{{asset('assets/backend/css/icheck.css')}}" rel="stylesheet" type="text/css"/>
	<link href="{{ asset('assets/backend/vendors/jasny-bootstrap/css/jasny-bootstrap.css') }}" rel="stylesheet" />
	<link rel="stylesheet" href="{{ asset('assets/backend/vendors/jQuery-File-Upload/css/jquery.fileupload.css') }}" />
	<link rel="stylesheet" href="{{ asset('assets/backend/vendors/jQuery-File-Upload/css/jquery.fileupload-ui.css') }}" />
	<!--end of page level css-->
@endsection

@section('title')

    <section class="content-header">
        <div class="row">
            <div class="col-md-6">
                <h1>Edit district</h1>
            </div>
        </div>
        <ol class="breadcrumb">
            <li>
                <a href="index.html">
                    <i class="fa fa-fw fa-home"></i>Dashboard
                </a>
            </li>
            <li>
                <a href="#">Edit district name</a>
            </li>
        </ol>
    </section>

@endsection

@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="panel-body">
                {!! Form::model($district, ['method'=>'PATCH', 'action'=>['DistrictController@update', $district->id], 'class'=>'form-horizontal', 'files'=>true]) !!}
                <div class="cd-block">
                    <div class="cd-content">
                        <div class="form-group">
                            <label class="col-lg-2 control-label">
                                Name (Bangla)
                                <span class='require'>*</span>
                            </label>
                            <div class="col-lg-6">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-file-text text-primary"></i>
                                    </span>
                                    <input type="text" placeholder="District name (Bangla) Unicode only" name="name" id="name" class="form-control" value="{{ $district->name }}">
                                </div>
                            </div>
	                        <div class="col-lg-4">
		                        @include('admin.includes.form-errors', ['field'=>'name'])
	                        </div>
                        </div>
                    </div>
                </div>

                <div class="cd-block">
                    <div class="cd-content">
                        <div class="form-group">
                            <label class="col-lg-2 control-label">
                                Name (English)
                                <span class='require'>*</span>
                            </label>
                            <div class="col-lg-6">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-file-text text-primary"></i>
                                    </span>
                                    <input type="text" placeholder="District name (English)" name="name_english" id="name-english" class="form-control" value="{{ $district->name_english }}">
                                </div>
                            </div>
	                        <div class="col-lg-4">
		                        @include('admin.includes.form-errors', ['field'=>'name_english'])
	                        </div>
                        </div>
                    </div>
                </div>

                <div class="form-group">
	                <label class="col-lg-2 control-label">
		                District Cover image
		                <span class='require'>*</span>
	                </label>
                    <div class="col-lg-6">
                        <div class="fileinput fileinput-new" data-provides="fileinput">
                            <div class="fileinput-new thumbnail" style="width: 200px; height: 150px;">
                                <img data-src="holder.js/200x150" alt="..."></div>
                            @if($district->cover_image)
                                <img src="{{ asset('assets/uploads/districtCoverImage/' . $district->cover_image)}}" style="max-width: 200px;max-height: 150px;margin-left: 15px;float: right;">
                            @else
                                <p style="float: right; margin: 60px 20px;">{{'District image not available'}}</p>
                            @endif
                            <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px;"></div>
                            <div>
                                   <span class="btn btn-primary btn-file">
                                       <span class="fileinput-new">Select image</span>
                                       <span class="fileinput-exists">Change</span>
                                       <input type="file" name="cover_image">
                                   </span>
                                <a href="#" class="btn btn-primary fileinput-exists" data-dismiss="fileinput">Remove</a>
                            </div>
                        </div>
                    </div>
	                <div class="col-lg-4">
		                @include('admin.includes.form-errors', ['field'=>'cover_image'])
	                </div>
                </div>

	            <div class="cd-block">
		            <div class="cd-content">
			            <div class="form-group">
				            <label class="col-lg-2 control-label">
					            About District
					            <span class='require'>*</span>
				            </label>
				            <div class="col-lg-6">
					            <div class="panel-body" style="padding: 0px !important;">
						            <textarea class="summernote edi-css" id="summernote" placeholder="write the message here..." name="about_district">{{ $district->about_district }}</textarea>
					            </div>
				            </div>
				            <div class="col-lg-4">
					            @include('admin.includes.form-errors', ['field'=>'about_district'])
				            </div>
			            </div>
		            </div>
	            </div>

	            <div class="cd-block">
                    <div class="cd-content">
                        <div class="form-group">
                            <label class="col-lg-2 control-label">
                                Name of SP
                                <span class='require'>*</span>
                            </label>
                            <div class="col-lg-6">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-sun-o text-primary"></i>
                                    </span>
                                    <input type="text" placeholder="SP Name" name="sp_name" id="sp-name" class="form-control" value="{{ $district->sp_name }}">
                                </div>
                            </div>
	                        <div class="col-lg-4">
		                        @include('admin.includes.form-errors', ['field'=>'sp_name'])
	                        </div>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-lg-2 control-label">Image of SP <span class='require'>*</span></label>
                    <div class="col-lg-6">
                        <div class="fileinput fileinput-new" data-provides="fileinput">
                            <div class="fileinput-new thumbnail" style="width: 200px; height: 150px;">
                                <img data-src="holder.js/200x150" alt="..."></div>
	                        @if($district->sp_photo)
		                        <img src="{{ asset('assets/uploads/sp/' . $district->sp_photo)}}" style="max-width: 200px;max-height: 150px;margin-left: 15px;float: right;">
	                        @else
		                        <p style="float: right; margin: 60px 20px;">{{'SP image not available'}}</p>
	                        @endif
                            <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px;"></div>
                            <div>
                                   <span class="btn btn-primary btn-file">
                                       <span class="fileinput-new">Select image</span>
                                       <span class="fileinput-exists">Change</span>
                                       <input type="file" name="sp_photo">
                                   </span>
                                <a href="#" class="btn btn-primary fileinput-exists" data-dismiss="fileinput">Remove</a>
                            </div>
                        </div>
                    </div>
	                <div class="col-lg-4">
		                @include('admin.includes.form-errors', ['field'=>'sp_photo'])
	                </div>
                </div>

                <div class="cd-block">
                    <div class="cd-content">
                        <div class="form-group">
                            <label class="col-lg-2 control-label">
                                Message of SP
                                <span class='require'>*</span>
                            </label>
                            <div class="col-lg-6">
                                <div class="panel-body" style="padding: 0px !important;">
                                    <textarea class="summernote edi-css" id="summernote" placeholder="write the message here..." name="message">{{ $district->message }}</textarea>
                                </div>
                            </div>
	                        <div class="col-lg-4">
		                        @include('admin.includes.form-errors', ['field'=>'message'])
	                        </div>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                        <button class="btn btn-primary" type="submit">Update</button>
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
@endsection