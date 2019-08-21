@extends('layouts.master')

@section('title')

    <section class="content-header">
        <div class="row">
            <div class="col-md-6">
                <h1>Create permission</h1>
            </div>
        </div>
        <ol class="breadcrumb">
            <li>
                <a href="index.html">
                    <i class="fa fa-fw fa-home"></i>Dashboard
                </a>
            </li>
            <li>
                <a href="#">Create new permission</a>
            </li>
        </ol>
    </section>

@endsection

@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="panel-body">
                {!! Form::open(['method'=>'POST', 'action'=>'PermissionsController@store', 'class'=>'form-horizontal']) !!}
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
                                    <input type="text" placeholder="Permission name" name="name" id="permission-name" class="form-control">
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
                    <label class="col-lg-2 col-md-3 control-label" for="description">Desciption</label>
                    <div class="col-lg-6 col-md-9">
                        <textarea class="form-control" name="description" placeholder="Enter Description" style="min-height: 200px;"></textarea>
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
