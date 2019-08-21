@extends('layouts.master')

@section('customCss')
    <style type="text/css">
        .title{
            font-size: 22px;
            font-family: Sans-Serif;
            font-weight: bold;
            margin: 25px 0px;
        }

        .description p{
            font-size: 15px;
            font-family: Roboto;
            margin: 40px 0px 50px 0px;
        }

        .more-images img{
            margin: 10px 0px;
            max-height: 200px;
            max-width: 100%;
        }
    </style>
@endsection

@section('title')
    <section class="content-header">
        <div class="row">
            <div class="col-md-6">
                <h1>Gallery Details</h1>
            </div>
            <div class="col-md-6">
                <h1><a href="{{ route('gallery.index') }}" class="btn btn-primary pull-right">Return to gallery list</a></h1>
            </div>
        </div>
        <ol class="breadcrumb">
            <li>
                <a href="{{ route('dashboard') }}">
                    <i class="fa fa-fw fa-home"></i>Dashboard
                </a>
            </li>
            <li>
                <a href="#">Gallery Details</a>
            </li>
        </ol>
    </section>
@endsection

@section('content')
    <section class="content paddingleft_right15">
        <div class="row">
            <div class="col-lg-12">
                <!-- First Basic Table strats here-->
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">
                            <i class="fa fa-fw fa-bell-o"></i>
                            Gallery
                        </h3>
                        <span class="pull-right">
                            <i class="fa fa-fw fa-times removepanel clickable"></i>
                            <i class="fa fa-fw fa-chevron-up clickable"></i>
                        </span>
                    </div>
                    <div class="panel-body">
                        <div class="col-md-12">
                            <p class="title">{{ $gallery->gallery_name }}</p>
                        </div>
                        <div class="col-md-4">
                            @if($gallery->cover_img)
                                <img class="img img-responsive cover_image" src="{{asset('assets/uploads/gallery/' . $gallery->cover_img)}}" alt="">
                            @else
                                <img src="http://via.placeholder.com/300" alt="No cover photo">
                            @endif
                        </div>

                        <div class="col-md-5 col-md-offset-1">
                            @if($gallery->created_by)
                                <p style="font-size: 15px"><b>Created by : </b>{{ $gallery->user->name }}</p>
                            @endif
                            @if($gallery->status)
                                <p style="font-size: 15px"><b>Status : </b>{{ $gallery->status==1 ? 'Published' : 'Unpublished' }}</p>
                            @endif
                            @if($gallery->created_at)
                                <p style="font-size: 15px"><b>Created at : </b>{{ $gallery->created_at->diffForHumans() }}</p>
                            @endif
                        </div>

                        <div class="col-md-2">
                            @if(Auth::user()->can('edit-gallery'))
                            <a href="{{ route('gallery.edit',$gallery->id) }}" class="btn btn-success btn-lg btn-block">Edit gallery</a><br>
                            @endif
                            @if(Auth::user()->can('delete-gallery'))
                            <button class="btn btn-danger btn-lg btn-block" data-toggle="modal" data-target="#galleryDeleteModal{{$gallery->id}}">Delete gallery</button>

                            <div class="modal fade" id="galleryDeleteModal{{$gallery->id}}" role="dialog">
                                <div class="modal-dialog modal-sm">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            <h4 class="modal-title">Delete gallery</h4>
                                        </div>
                                        <div class="modal-body">
                                            <p>Are you sure, you want to delete this gallery item?</p>
                                        </div>
                                        <div class="modal-footer">
                                            {!! Form::open(['method'=>'DELETE', 'action'=>['GalleryController@destroy', $gallery->id]]) !!}
                                            <button type="submit" class="btn btn-danger" style="float: left;">Yes</button>
                                            {!! Form::close() !!}
                                            <button type="button" class="btn btn-default" data-dismiss="modal" style="float: right; margin-left: 15px;">Cancel</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            @endif
                        </div>

                        <div class="col-md-12 description">
                            <p>{!! $gallery->description !!}</p>
                        </div>

                        <div class="row">
                            @if($gallery->galleryimages)
                                @foreach($gallery->galleryimages as $image)
                                    <div class="col-md-3 more-images">
                                        <img class="img img-responsive" src="{{ asset('assets/uploads/gallery/' . $image->image_path) }}" alt="">
                                        @if(Auth::user()->can('delete-gallery-image'))
                                        <center>
                                            <button class="btn btn-danger" data-toggle="modal" data-target="#deleteModal{{$image->id}}">Delete</button>
                                        </center>
                                        <div class="modal fade" id="deleteModal{{$image->id}}" role="dialog">
                                            <div class="modal-dialog modal-sm">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                        <h4 class="modal-title">Delete gallery image</h4>
                                                    </div>
                                                    <div class="modal-body">
                                                        <p>Are you sure, you want to delete this image?</p>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <a type="submit" href="{{ url('admin/gallery/destroyImage/'. $image->id) }}" class="btn btn-danger" style="float: left;">Yes</a>
                                                        <button type="button" class="btn btn-default" data-dismiss="modal" style="float: right; margin-left: 15px;">Cancel</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        @endif
                                    </div>
                                @endforeach
                            @endif
                        </div>

                        <br><br><br>

                        @if(!empty($gallery->video))
                            <div class="row">
                                <div class="col-md-6 col-md-offset-3">
                                    {!! $gallery->video !!}
                                </div>
                            </div>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection