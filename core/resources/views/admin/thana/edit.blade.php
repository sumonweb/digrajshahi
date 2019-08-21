@extends('layouts.master')

@section('customCss')
    <!--page level css -->
    <link href="{{ asset('assets/backend/vendors/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('assets/backend/vendors/summernote/summernote.css') }}" rel="stylesheet" media="screen" type="text/css" >
    <link href="{{asset('assets/backend/css/icheck.css')}}" rel="stylesheet" type="text/css"/>
    <link href="{{ asset('assets/backend/vendors/jasny-bootstrap/css/jasny-bootstrap.css') }}" rel="stylesheet" />
    <!--end of page level css-->
@endsection

@section('title')

    <section class="content-header">
        <div class="row">
            <div class="col-md-6">
                <h1>Edit thana</h1>
            </div>
        </div>
        <ol class="breadcrumb">
            <li>
                <a href="index.html">
                    <i class="fa fa-fw fa-home"></i>Dashboard
                </a>
            </li>
            <li>
                <a href="#">Edit thana</a>
            </li>
        </ol>
    </section>

@endsection

@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="panel-body">
                {!! Form::model($thana, ['method'=>'PATCH', 'action'=>['ThanaController@update', $thana->id], 'class'=>'form-horizontal', 'files'=>true]) !!}
                <div class="cd-block">
                    <div class="cd-content">
                        <div class="form-group">
                            <label class="col-lg-2 control-label">
                                Thana name
                                <span class='require'>*</span>
                            </label>
                            <div class="col-lg-6">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-sun-o text-primary"></i>
                                    </span>
                                    <input type="text" name="name" id="thana-name" class="form-control" value="{{ $thana->name }}">
                                </div>
                            </div>
                            <div class="col-lg-4">
                                @include('admin.includes.form-errors', ['field'=>'name'])
                            </div>
                        </div>
                    </div>
                </div>

                <div class="cd-block select-2-shown select-3-shown" id="jurisdiction_district">
                    <div class="cd-content">
                        <div class="form-group">
                            <label class="control-label  col-md-2">District</label>
                            <div class="col-lg-6">
                                <select name="district_id" id="district-id" class="form-control select2">
                                    <option value="">Please select</option>

                                    @if($districts)
                                        @foreach($districts as $district)
                                            <option value="{{ $district->id }}" {{$thana->district_id == $district->id ? 'selected' : ''}}>{{ $district->name }}</option>
                                        @endforeach
                                    @endif

                                </select>
                            </div>
                        </div>
                    </div>
                </div>

	            <div class="form-group">
		            <label class="col-lg-2 control-label">Cover image</label>
		            <div class="col-lg-6">
			            <div class="fileinput fileinput-new" data-provides="fileinput">
				            <div class="fileinput-new thumbnail" style="width: 200px; height: 150px;">
					            <img data-src="holder.js/200x150" alt="..."></div>
				            @if($thana->thana_image)
					            <img src="{{ asset('assets/uploads/thana/' . $thana->thana_image)}}" style="max-width: 200px;max-height: 150px;margin-left: 15px;float: right;">
				            @else
					            <p style="float: right; margin: 60px 20px;">{{'Thana image not available'}}</p>
				            @endif
				            <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px;"></div>
				            <div>
                                   <span class="btn btn-primary btn-file">
                                       <span class="fileinput-new">Select image</span>
                                       <span class="fileinput-exists">Change</span>
                                       <input type="file" name="thana_image">
                                   </span>
					            <a href="#" class="btn btn-primary fileinput-exists" data-dismiss="fileinput">Remove</a>
				            </div>
			            </div>
			            <p class="text-danger"><b>Note: </b>Image size is 800x352px</p>
		            </div>
		            <div class="col-lg-2">
			            @include('admin.includes.form-errors', ['field'=>'thana_image'])
		            </div>
	            </div>

	            <div class="cd-block">
		            <div class="cd-content">
			            <div class="form-group">
				            <label class="col-lg-2 control-label">
					            About thana
				            </label>
				            <div class="col-lg-6">
					            <div class="panel-body"  style="padding: 0px !important;">
						            <textarea class=" edi-css" id="summernote" placeholder="write the content here..." name="about_thana">{{ $thana->about_thana }}</textarea>
					            </div>
				            </div>
			            </div>
		            </div>
	            </div>

                <div class="cd-block">
                    <div class="cd-content">
                        <div class="form-group">
                            <label class="col-lg-2 control-label">
                                Map
                                <span class='require'>*</span>
                            </label>
                            <div class="col-lg-9">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-file-text text-primary"></i>
                                    </span>
                                    <input type="text" placeholder="Map embed link from google map" name="map" id="map" class="form-control" value="{{$thana->map}}">
                                </div>
                                @include('admin.includes.form-errors', ['field'=>'map'])
                            </div>
                        </div>
                    </div>
                </div>

                <div class="cd-block select-3-shown" id="jurisdiction_thana">
                    <div class="cd-content">
                        <div class="form-group">
                            <div class="col-md-10 col-md-offset-2 help-block">
                                Please provide the thana map embed link here. Replace the height and width with the following... height="100%" width="100%"
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
	<!-- end of page level js -->
@endsection