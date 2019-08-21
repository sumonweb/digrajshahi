@extends('layouts.master')

@section('title')

    <section class="content-header">
        <div class="row">
            <div class="col-md-6">
                <h1>News category</h1>
            </div>
        </div>
        <ol class="breadcrumb">
            <li>
                <a href="index.html">
                    <i class="fa fa-fw fa-home"></i>Dashboard
                </a>
            </li>
            <li>
                <a href="#">News category</a>
            </li>
        </ol>
    </section>

@endsection

@section('content')

    <div class="row">
        <div class="col-md-6">
            <div class="panel-body">
                {!! Form::open(['method'=>'POST', 'action'=>'NewsCategoryController@store', 'class'=>'form-horizontal']) !!}
                <div class="cd-block">
                    <div class="cd-content">
                        <div class="form-group">
                            <label class="col-lg-2 control-label">
                                Name
                                <span class='require'>*</span>
                            </label>
                            <div class="col-lg-9">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-file-text text-primary"></i>
                                    </span>
                                    <input type="text" placeholder="Category name" name="category_name" id="category-name" class="form-control">
                                </div>
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
                            <div class="col-lg-9">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-file-text text-primary"></i>
                                    </span>
                                    <input type="text" placeholder="Slug" name="slug" id="slug" class="form-control">
                                </div>
                                @include('admin.includes.form-errors', ['field'=>'slug'])
                            </div>
                        </div>
                    </div>
                </div>

                <div class="cd-block select-3-shown" id="jurisdiction_thana">
                    <div class="cd-content">
                        <div class="form-group">
                            <div class="col-md-10 col-md-offset-2 help-block">
                                Slug is a user friendly version of the URL. If the category name is single word then enter the same name as slug with all small letters. Or if category name is multi word, then please use hyphen (-) between each words.
                            </div>
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

            <div class="flash-message">
                @foreach (['danger', 'warning', 'success', 'info'] as $msg)
                    @if(Session::has('alert-' . $msg))

                        <p class="alert alert-{{ $msg }}">{{ Session::get('alert-' . $msg) }} <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a></p>
                    @endif
                @endforeach
            </div> <!-- end .flash-message -->

        </div>

        <div class="col-md-6">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        <i class="fa fa-fw fa-bell-o"></i>
                        All categories
                    </h3>
                    <span class="pull-right">
                        <i class="fa fa-fw fa-times removepanel clickable"></i>
                        <i class="fa fa-fw fa-chevron-up clickable"></i>
                    </span>
                </div>
                <div class="panel-body">
                    <div class="table-responsive table-stripped">
                        <table class="table" id="table">
                            <thead>
                            <tr class="filters">
                                <th>Sl</th>
                                <th>Category name</th>
                                <th>Slug</th>
                                <th>Status</th>
                                {{--<th>Created At</th>--}}
                                <th>Actions</th>
                            </tr>
                            </thead>
                            <tbody>

                            @if($categories)
                                @foreach($categories as $category)

                                    <tr>
                                        <td>{{ $category->id }}</td>
                                        <td>{{ $category->category_name }}</td>
                                        <td>{{ $category->slug }}</td>
                                        <td>
                                            {{ $category->status==1 ? 'Active' : 'Deactivated'}}
                                        </td>
{{--                                        <td>{{ $category->created_at ? $category->created_at->diffForHumans() : 'Not available' }}</td>--}}
                                        <td>
                                            <a href="{{ route('categories.edit', $category->id) }}"><i class="fa fa-fw fa-pencil icon-editcolor"></i></a>
                                            <i class="fa fa-fw fa-times icon-deletecolor" data-toggle="modal" data-target="#myModal{{$category->id}}"></i>


                                            <div class="modal fade" id="myModal{{$category->id}}" role="dialog">
                                                <div class="modal-dialog modal-sm">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                            <h4 class="modal-title">Delete category</h4>
                                                        </div>
                                                        <div class="modal-body">
                                                            <p>Are you sure, you want to delete this category?</p>
                                                        </div>
                                                        <div class="modal-footer">
                                                            {!! Form::open(['method'=>'DELETE', 'action'=>['NewsCategoryController@destroy', $category->id]]) !!}
                                                            <button type="submit" class="btn btn-danger" style="float: left;">Yes</button>
                                                            {!! Form::close() !!}
                                                            <button type="button" class="btn btn-default" data-dismiss="modal" style="float: right; margin-left: 15px;">Cancel</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>

                                @endforeach
                            @endif
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection