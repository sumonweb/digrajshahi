@extends('layouts.master')

@section('title')

    <section class="content-header">
        <div class="row">
            <div class="col-md-6">
                <h1>Edit permission</h1>
            </div>
        </div>
        <ol class="breadcrumb">
            <li>
                <a href="index.html">
                    <i class="fa fa-fw fa-home"></i>Dashboard
                </a>
            </li>
            <li>
                <a href="#">Edit permission</a>
            </li>
        </ol>
    </section>

@endsection

@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="panel-body">
                {!! Form::model($permission, ['method'=>'PATCH', 'action'=>['PermissionsController@update', $permission->id], 'class'=>'form-horizontal']) !!}
                <div class="cd-block">
                    <div class="cd-content">
                        <div class="form-group">
                            <label class="col-lg-2 control-label">
                                Permission name
                                <span class='require'>*</span>
                            </label>
                            <div class="col-lg-6">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-sun-o text-primary"></i>
                                    </span>
                                    <input type="text" name="name" id="permission-name" class="form-control" value="{{ $permission->name }}">
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
                                    <input type="text" name="display_name" id="display-name" class="form-control" value="{{ $permission->display_name }}">
                                </div>
                            </div>
                            <div class="col-lg-4">
                                @include('admin.includes.form-errors', ['field'=>'display_name'])
                            </div>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-lg-2 col-md-3 control-label" for="description">Desciption</label>
                    <div class="col-lg-6 col-md-9">
                        <textarea class="form-control" name="description" style="min-height: 200px;">{{$permission->description}}</textarea>
                    </div>
                </div>

                <div class="cd-block">
                    <div class="cd-content">
                        <div class="form-group">
                            <label class="control-label  col-md-2">Status</label>
                            <div class="col-md-6">
                                <select name="status" id="select2_sample70" class="form-control select2">
                                    <option>Please select</option>
                                    <option value="0">Deactive</option>
                                    <option value="1" selected>Active</option>
                                </select>
                            </div>
                            <div class="col-md-4">

                                <p style="font-size: 12px; font-family: Sans-Serif;margin-top: 9px;">Current status : {{ $permission->status==1 ? 'Active' : 'Deactivated'}}</p>
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