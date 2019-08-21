@extends('layouts.master')

@section('customCss')
    <link href="{{ asset('assets/backend/vendors/jasny-bootstrap/css/jasny-bootstrap.css') }}" rel="stylesheet" />
    <link href="{{ asset('assets/backend/vendors/bootstrapvalidator/css/bootstrapValidator.min.css') }}" rel="stylesheet"/>
    <link href="{{ asset('assets/backend/vendors/select2/css/select2.min.css') }}" rel="stylesheet"/>
    <link href="{{ asset('assets/backend/vendors/select2/select2-bootstrap.css') }}" rel="stylesheet"/>
    <link href="{{asset('assets/backend/css/custom_css/addnew_user.css')}}" rel="stylesheet" type="text/css"/>
    <link href="{{asset('assets/backend/css/icheck.css')}}" rel="stylesheet" type="text/css"/>
@endsection

@section('title')

    <section class="content-header">
        <div class="row">
            <div class="col-md-6">
                <h1>Create role</h1>
            </div>
        </div>
        <ol class="breadcrumb">
            <li>
                <a href="index.html">
                    <i class="fa fa-fw fa-home"></i>Dashboard
                </a>
            </li>
            <li>
                <a href="#">Create new role</a>
            </li>
        </ol>
    </section>

@endsection

@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="panel-body">
                {!! Form::open(['method'=>'POST', 'action'=>'RolesController@store', 'class'=>'form-horizontal']) !!}
                <div class="cd-block">
                    <div class="cd-content">
                        <div class="form-group">
                            <label class="col-lg-2 control-label">
                                Role name
                                <span class='require'>*</span>
                            </label>
                            <div class="col-lg-6">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-sun-o text-primary"></i>
                                    </span>
                                    <input type="text" placeholder="Role name" name="name" id="role-name" class="form-control">
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
                                Display name
                                <span class='require'>*</span>
                            </label>
                            <div class="col-lg-6">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-television text-primary"></i>
                                    </span>
                                    <input type="text" placeholder="Display name" name="display_name" id="display-name" class="form-control">
                                </div>
                            </div>
                            <div class="col-lg-4">
                                @include('admin.includes.form-errors', ['field'=>'display_name'])
                            </div>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-lg-2 col-md-3 control-label" for="description">Description</label>
                    <div class="col-lg-6 col-md-9">
                        <textarea class="form-control" name="description" placeholder="Enter Description" style="min-height: 200px;"></textarea>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label  col-md-2">Role Permissions <span class='require'>*</span></label>
                    <div class="col-md-10 col-md-offset-2">
                        @if($permissions)
                            @foreach($permissions as $permission)
                                <div class="col-lg-3">
                                    <div class="checkbox icheck-primary">
                                        <input type="checkbox" name="permission[]" value="{{ $permission->id }}" id="primary{{$permission->id}}" />
                                        <label for="primary{{$permission->id}}">{{$permission->display_name}}</label>
                                    </div>
                                </div>
                            @endforeach
                        @endif
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
@endsection

@section('customJs')
{{--    <script src="{{ asset('assets/backend/js/jquery-3.3.1.min.js') }}" type="text/javascript"></script>--}}
    <script src="{{ asset('assets/backend/vendors/jasny-bootstrap/js/jasny-bootstrap.js') }}" type="text/javascript"></script>
    <script src="{{ asset('assets/backend/vendors/bootstrapvalidator/js/bootstrapValidator.min.js') }}" type="text/javascript" ></script>
    <script src="{{ asset('assets/backend/vendors/select2/js/select2.js') }}" type="text/javascript"></script>
    <script src="{{ asset('assets/backend/js/custom_js/addnew_user.js') }}" type="text/javascript"></script>
@endsection