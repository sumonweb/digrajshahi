@extends('layouts.master')

@section('title')

    <section class="content-header">
        <div class="row">
            <div class="col-md-6">
                <h1>Edit category</h1>
            </div>
        </div>
        <ol class="breadcrumb">
            <li>
                <a href="index.html">
                    <i class="fa fa-fw fa-home"></i>Dashboard
                </a>
            </li>
            <li>
                <a href="#">Edit category</a>
            </li>
        </ol>
    </section>

@endsection

@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="panel-body">
                {!! Form::model($category, ['method'=>'PATCH', 'action'=>['NewsCategoryController@update', $category->id], 'class'=>'form-horizontal']) !!}
                <div class="cd-block">
                    <div class="cd-content">
                        <div class="form-group">
                            <label class="col-lg-2 control-label">
                                Category name
                                <span class='require'>*</span>
                            </label>
                            <div class="col-lg-6">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-sun-o text-primary"></i>
                                    </span>
                                    <input type="text" name="category_name" id="category-name" class="form-control" value="{{ $category->category_name }}">
                                </div>
                            </div>
                            <div class="col-lg-4">
                                @include('admin.includes.form-errors', ['field'=>'category_name'])
                            </div>
                        </div>
                    </div>
                </div>

                <div class="cd-block">
                    <div class="cd-content">
                        <div class="form-group">
                            <label class="col-lg-2 control-label">
                                Slug
                                <span class='require'>*</span>
                            </label>
                            <div class="col-lg-6">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-television text-primary"></i>
                                    </span>
                                    <input type="text" name="slug" id="slug" class="form-control" value="{{ $category->slug }}">
                                </div>
                            </div>
                            <div class="col-lg-4">
                                @include('admin.includes.form-errors', ['field'=>'display_name'])
                            </div>
                        </div>
                    </div>
                </div>



                <div class="cd-block">
                    <div class="cd-content">
                        <div class="form-group">
                            <label class="control-label  col-md-2">Status</label>
                            <div class="col-md-6">
                                <select name="status" id="select2_sample70" class="form-control select2">
                                    <option>Please select</option>
                                    <option value="0" {{ $category->status ==0 ? 'selected' : ' ' }}>Deactive</option>
                                    <option value="1" {{ $category->status ==1 ? 'selected' : ' ' }}>Active</option>
                                </select>
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