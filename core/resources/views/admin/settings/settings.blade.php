@extends('layouts.master')

@section('customCss')
    <link href="{{ asset('assets/backend/vendors/jasny-bootstrap/css/jasny-bootstrap.css') }}" rel="stylesheet" />
    <link href="{{ asset('assets/backend/vendors/bootstrapvalidator/css/bootstrapValidator.min.css') }}" rel="stylesheet"/>
    <link href="{{ asset('assets/backend/vendors/iCheck/css/minimal/blue.css') }}" rel="stylesheet"/>
    <link href="{{asset('assets/backend/css/custom_css/addnew_user.css')}}" rel="stylesheet" type="text/css"/>
@endsection

@section('title')

    <section class="content-header">
        <h1>General Settings</h1>
        <ol class="breadcrumb">
            <li>
                <a href="index.html">
                    <i class="fa fa-fw fa-home"></i>Dashboard
                </a>
            </li>
            <li>
                <a href="#">General Settings</a>
            </li>
        </ol>
        <div class="flash-message">
            @foreach (['danger', 'warning', 'success', 'info'] as $msg)
                @if(Session::has('alert-' . $msg))

                    <p class="alert alert-{{ $msg }}">{{ Session::get('alert-' . $msg) }} <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a></p>
                @endif
            @endforeach
        </div> <!-- end .flash-message -->
    </section>

@endsection

@section('content')
    <section>

        <div class="row">
            <div class="col-md-12">
                <div class="panel-body">
                    {!! Form::model($settings, ['method'=>'PATCH', 'action'=>['SettingsController@update', $settings->id], 'files'=>true, 'class'=>'form-horizontal', 'role'=>'form']) !!}

                    <div class="cd-block">
                        <div class="cd-content">
                            <div class="form-group">
                                <label class="col-lg-2 control-label">
                                    Site Name
                                    <span class='require'>*</span>
                                </label>
                                <div class="col-lg-6">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="fa fa-university text-primary"></i>
                                        </span>
                                        <input type="text" name="site_name" id="site-name" class="form-control" value="{{$settings->site_name ? $settings->site_name : ' '}}"></div>
                                </div>
                                <div class="col-lg-4">
                                    @include('admin.includes.form-errors', ['field'=>'site_name'])
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="cd-block">
                        <div class="cd-content">
                            <div class="form-group">
                                <label class="col-lg-2 control-label">
                                    Tagline
                                    <span class='require'>*</span>
                                </label>
                                <div class="col-lg-6">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="fa fa fa-tag text-primary"></i>
                                        </span>
                                        <input type="text" name="tagline" id="tagline" class="form-control" value="{{$settings->tagline ? $settings->tagline : ' '}}"></div>
                                </div>
                                <div class="col-lg-4">
                                    @include('admin.includes.form-errors', ['field'=>'tagline'])
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-2 control-label">Upload logo</label>
                        <div class="col-lg-6">
                            <div class="fileinput fileinput-new" data-provides="fileinput">
                                <div class="fileinput-new thumbnail" style="width: 200px; height: 150px;">
                                    <img data-src="holder.js/200x150" alt="...">
                                </div>
                                @if($settings->logo)
                                <img src="{{ asset('assets/uploads/' . $settings->logo)}}" style="max-width: 200px;max-height: 150px;margin-left: 15px;float: right;">
                                @else
                                    <p style="float: right; margin: 60px 20px;">{{'Logo not available'}}</p>
                                @endif
                                <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px;">
                                </div>
                                <div>
                                    <span class="btn btn-primary btn-file">
                                        <span class="fileinput-new">Select image</span>
                                        <span class="fileinput-exists">Change</span>
                                        <input type="file" name="logo" value="{{$settings->logo}}">
                                    </span>
                                    <a href="#" class="btn btn-primary fileinput-exists" data-dismiss="fileinput">Remove</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            @include('admin.includes.form-errors', ['field'=>'logo'])
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-2 control-label">Upload favicon</label>
                        <div class="col-lg-6">
                            <div class="fileinput fileinput-new" data-provides="fileinput">
                                <div class="fileinput-new thumbnail" style="width: 200px; height: 150px;">
                                    <img data-src="holder.js/200x150" alt="...">
                                </div>
                                @if($settings->favicon)
                                    <img src="{{ asset('assets/uploads/' . $settings->favicon)}}" style="max-width: 200px; max-height: 150px; margin-left: 15px;float: right;">
                                @else
                                    <p style="float: right; margin: 60px 20px;">{{'Favicon not available'}}</p>
                                @endif
                                <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px;"></div>
                                <div>
                                    <span class="btn btn-primary btn-file">
                                        <span class="fileinput-new">
                                            Select image
                                        </span>
                                        <span class="fileinput-exists">Change</span>
                                        <input type="file" name="favicon">
                                    </span>
                                    <a href="#" class="btn btn-primary fileinput-exists" data-dismiss="fileinput">Remove</a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-2 control-label">Cover photo</label>
                        <div class="col-lg-6">
                            <div class="fileinput fileinput-new" data-provides="fileinput">
                                <div class="fileinput-new thumbnail" style="width: 200px; height: 150px;">
                                    <img data-src="holder.js/200x150" alt="...">
                                </div>
                                @if($settings->cover_photo)
                                    <img src="{{ asset('assets/uploads/' . $settings->cover_photo) }}" style="max-width: 200px; max-height: 150px; margin-left: 15px;float: right;">
                                @else
                                    <p style="float: right; margin: 60px 20px;">{{'Cover photo not available'}}</p>
                                @endif
                                <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px;"></div>
                                <div>
                                    <span class="btn btn-primary btn-file">
                                        <span class="fileinput-new">
                                            Select image
                                        </span>
                                        <span class="fileinput-exists">Change</span>
                                        <input type="file" name="cover_photo">
                                    </span>
                                    <a href="#" class="btn btn-primary fileinput-exists" data-dismiss="fileinput">Remove</a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-2 control-label">
                            Local address
                        </label>
                        <div class="col-lg-6">
                            <textarea rows="5" cols="30" class="form-control" id="add1" name="address">{{$settings->address}}</textarea>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-2 control-label">
                            Email
                        </label>
                        <div class="col-lg-6">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="fa fa-fw fa-envelope text-primary"></i>
                                </span>
                                <input type="text" id="email" name="email" class="form-control" value="{{$settings->email ? $settings->email : ' '}}">
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-2 control-label">
                            Phone
                            <span class='require'>*</span>
                        </label>
                        <div class="col-lg-6">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="fa fa-fw fa-phone text-primary"></i>
                                </span>
                                <input type="text" id="phone" name="phone" class="form-control" value="{{$settings->phone ? $settings->phone : ' '}}">
                            </div>
                        </div>
                        <div class="col-lg-4">
                            @include('admin.includes.form-errors', ['field'=>'phone'])
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-2 control-label">Facebook page link</label>
                        <div class="col-lg-6">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="fa fa-fw fa-facebook text-primary"></i>
                                </span>
                                <input type="text" placeholder=" " id="fb-name" name="fb_page_link" class="form-control" value="{{$settings->fb_page_link ? $settings->fb_page_link : ' '}}">
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-lg-offset-2 col-lg-10">
                            <button class="btn btn-primary" type="submit">Save</button>
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