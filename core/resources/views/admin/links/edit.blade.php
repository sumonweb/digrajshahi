@extends('layouts.master')

@section('customCss')
    <!--iconpicker css-->
    <link rel="stylesheet" href="{{ asset('assets/backend/css/awesome4-iconpicker.min.css') }}">
    <link href="{{ asset('assets/backend/vendors/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css') }}" rel="stylesheet" type="text/css" />
{{--    <link href="{{ asset('assets/backend/vendors/summernote/summernote.css') }}" rel="stylesheet" media="screen" type="text/css" >--}}
    <link href="{{asset('assets/backend/css/icheck.css')}}" rel="stylesheet" type="text/css"/>
    <link href="{{ asset('assets/backend/vendors/jasny-bootstrap/css/jasny-bootstrap.css') }}" rel="stylesheet" />

    <style type="text/css">
        .search-width{width: 100px;}
        .iconpicker .iconpicker-content {
            position: absolute;
            width: 104%;
            height: 0;
            max-height: 200px;
            text-align: center;
            box-sizing: border-box;
            z-index: 99;
            margin-top: 9px;
            margin-left: -13px;
            border: 0;
            border-top: 0;
            border-bottom-left-radius: 3px;
            border-bottom-right-radius: 3px;
            background-color: hsla(0,0%,100%,.9);
            overflow: hidden;
            transition: .3s;

        }
        * {

            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;

        }
    </style>
@endsection

@section('title')

    <section class="content-header">
        <div class="row">
            <div class="col-md-6">
                <h1>Edit useful link</h1>
            </div>
        </div>
        <ol class="breadcrumb">
            <li>
                <a href="{{route('dashboard')}}">
                    <i class="fa fa-fw fa-home"></i>Dashboard
                </a>
            </li>
            <li>
                <a href="{{route('links.create')}}">Create useful link</a>
            </li>
        </ol>
    </section>

@endsection

@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="panel-body">
                {!! Form::model($link, ['method'=>'PUT', 'action'=>['LinksController@update', $link->id], 'class'=>'form-horizontal', 'files'=>true]) !!}
                <div class="cd-block">
                    <div class="cd-content">
                        <div class="form-group">
                            <label class="col-lg-2 control-label">
                                Link title
                                <span class='require'>*</span>
                            </label>
                            <div class="col-lg-6">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-sun-o text-primary"></i>
                                    </span>
                                    <input type="text" placeholder="Link title" name="title" id="link-title" class="form-control" value="{{$link->title}}">
                                </div>
                            </div>
                            <div class="col-lg-4">
                                @include('admin.includes.form-errors', ['field'=>'title'])
                            </div>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-lg-2 control-label">Upload logo</label>
                    <div class="col-lg-6">
                        <div class="fileinput fileinput-new" data-provides="fileinput">
                            <div class="fileinput-new thumbnail" style="width: 200px; height: 150px;">
                                <img data-src="holder.js/200x150" alt="..."></div>
                            @if(!empty($link->logo))
                                <img src="{{ asset('assets/uploads/links/' . $link->logo)}}" style="max-width: 200px;max-height: 150px;margin-left: 15px;float: right;">
                            @else
                                <p style="float: right; margin: 60px 20px;">{{'Logo not available'}}</p>
                            @endif
                            <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px;"></div>
                            <div>
                                   <span class="btn btn-primary btn-file">
                                       <span class="fileinput-new">Select image</span>
                                       <span class="fileinput-exists">Change</span>
                                       <input type="file" name="logo">
                                   </span>
                                <a href="#" class="btn btn-primary fileinput-exists" data-dismiss="fileinput">Remove</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        @include('admin.includes.form-errors', ['field'=>'logo'])
                    </div>
                </div>

                <div class="cd-block">
                    <div class="cd-content">
                        <div class="form-group">
                            <label class="col-lg-2 control-label">
                                Pick an icon
                            </label>
                            <div class="col-lg-6">
                                <div class="input-group">
                                    <input type="text" class="form-control demo3" style="width: 400px !important;" name="icon" value="{{ $link->icon }}">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="cd-block">
                    <div class="cd-content">
                        <div class="form-group">
                            <label class="col-lg-2 control-label">
                                Enter link
                                <span class='require'>*</span>
                            </label>
                            <div class="col-lg-6">
                                <div class="panel-body"  style="padding: 0px !important;">
                                    <textarea class=" edi-css" id="summernote" placeholder="write the content here..." name="link">{{ $link->link }}</textarea>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                @include('admin.includes.form-errors', ['field'=>'link'])
                            </div>
                        </div>
                    </div>
                </div>

                <div class="cd-block">
                    <div class="cd-content">
                        <div class="form-group">
                            <label class="control-label  col-md-2">Link status<span class='require'>*</span></label>
                            <div class="col-md-6">
                                <select name="status" id="downloadable-file-status" class="form-control select2">
                                    <option>Please select</option>
                                    <option value="0" {{$link->status==0 ? 'selected' : ' '}}>Deactivate</option>
                                    <option value="1" {{$link->status==1 ? 'selected' : ' '}}>Activate</option>
                                </select>
                                <p style="font-size: 11px; margin-top: 5px"><b>Current status : </b>{{ $link->status == 1 ? 'Active' : 'Deactivated' }}</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="cd-block">
                    <div class="cd-content">
                        <div class="form-group">
                            <label for="link-order" class="col-lg-2 control-label">
                                Link Order
                                <span class='require'>*</span>
                            </label>
                            <div class="col-lg-6">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-sun-o text-primary"></i>
                                    </span>
                                    <input type="text" placeholder="E.g. 1" name="links_order" id="link-order" class="form-control" value="{{ !empty($link->links_order) ? $link->links_order : '' }}">
                                </div>
                            </div>
                            <div class="col-lg-4">
                                @include('admin.includes.form-errors', ['field'=>'links_order'])
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
{{--    <script src="{{ asset('assets/backend/vendors/summernote/summernote.min.js') }}" type="text/javascript" ></script>--}}
    <script src="{{ asset('assets/backend/js/custom_js/form_editors.js') }}" type="text/javascript"></script>
    <script src="{{asset('assets/backend/vendors/jasny-bootstrap/js/jasny-bootstrap.js')}}" type="text/javascript"></script>
    <script src="{{ asset('assets/backend/js/awesome4-iconpicker.min.js') }}"></script>
    <script>
        // Your js
        $('.demo1').iconpicker();
        $('.demo2').iconpicker();
        $('.demo3').iconpicker({ "outputType": "html" });
    </script>
@endsection