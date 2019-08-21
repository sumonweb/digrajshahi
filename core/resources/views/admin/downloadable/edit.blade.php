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
                <h1>Edit downloadable item</h1>
            </div>
        </div>
        <ol class="breadcrumb">
            <li>
                <a href="{{route('dashboard')}}">
                    <i class="fa fa-fw fa-home"></i>Dashboard
                </a>
            </li>
            <li>
                <a href="#">Edit downloadable item</a>
            </li>
        </ol>
    </section>

@endsection

@section('content')
    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="panel-body">
                    {!! Form::model($downloadable, ['method'=>'PUT', 'action'=>['DownloadableController@update', $downloadable->id], 'class'=>'form-horizontal', 'files'=>true]) !!}
                    <div class="cd-block">
                        <div class="cd-content">
                            <div class="form-group">
                                <label class="col-lg-2 control-label">
                                    Title
                                    <span class='require'>*</span>
                                </label>
                                <div class="col-lg-6">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="fa fa-sun-o text-primary"></i>
                                        </span>
                                        <input type="text" placeholder="Downloadable item title" name="title" id="title" class="form-control" value="{{ $downloadable->title }}">
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    @include('admin.includes.form-errors', ['field'=>'title'])
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-2 control-label">Upload file <span class='require'>*</span></label>
                        <div class="col-lg-6">
                            <div class="fileinput fileinput-new" data-provides="fileinput">
                                <div class="fileinput-new thumbnail" style="width: 200px; height: 150px;">
                                    <img data-src="holder.js/200x150" alt="..."></div>
                                <div class="" style="float:right; margin-left: 20px;">
                                    @if(!empty($downloadable->file))
                                        <a href="#" onclick="window.open
                                                ('{{asset('assets/uploads/downloadcorner/'.$downloadable->file)}}', '_blank', 'fullscreen=yes'); return false;" class="btn btn-primary btn-sm">view</a>
                                        <a href="{{asset('assets/uploads/downloadcorner/'.$downloadable->file)}}" class="btn btn-primary btn-sm" download>Download file</a>
                                    @else
                                        <p style="float: right; margin: 60px 20px;">{{'Downloadable file not available'}}</p>
                                    @endif
                                </div>
                                <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px;"></div>
                                <div>
                                   <span class="btn btn-primary btn-file">
                                       <span class="fileinput-new">Select file</span>
                                       <span class="fileinput-exists">Change</span>
                                       <input type="file" name="file">
                                   </span>
                                    <a href="#" class="btn btn-primary fileinput-exists" data-dismiss="fileinput">Remove</a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="cd-block">
                        <div class="cd-content">
                            <div class="form-group">
                                <label class="control-label  col-md-2">Downloadable file status<span class='require'>*</span></label>
                                <div class="col-md-6">
                                    <select name="status" id="downloadable-file-status" class="form-control select2">
                                        <option>Please select</option>
                                        <option value="0" {{$downloadable->status==0 ? 'selected' : ' '}}>Deactivate</option>
                                        <option value="1" {{$downloadable->status==1 ? 'selected' : ' '}}>Activate</option>
                                    </select>
                                    <p style="font-size: 11px; margin-top: 5px"><b>Current status : </b>{{ $downloadable->status == 1 ? 'Active' : 'Deactivated' }}</p>
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