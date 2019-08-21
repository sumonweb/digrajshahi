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
                <h1>News Details</h1>
            </div>
            <div class="col-md-6">
                <h1><a href="{{ route('news.index') }}" class="btn btn-primary pull-right">Return to news list</a></h1>
            </div>
        </div>
        <ol class="breadcrumb">
            <li>
                <a href="index.html">
                    <i class="fa fa-fw fa-home"></i>Dashboard
                </a>
            </li>
            <li>
                <a href="#">News Details</a>
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
                            News
                        </h3>
                        <span class="pull-right">
                            <i class="fa fa-fw fa-times removepanel clickable"></i>
                            <i class="fa fa-fw fa-chevron-up clickable"></i>
                        </span>
                    </div>
                    <div class="panel-body">
                        <div class="col-md-12">
                            <p class="title">{{ $news->title }}</p>
                        </div>
                        <div class="col-md-4">
                            @if($news->cover_image)
                                <img class="img img-responsive cover_image" src="{{asset('assets/uploads/news/' . $news->cover_image)}}" alt="">
                            @else
                                <img src="http://via.placeholder.com/300" alt="No cover photo">
                            @endif
                        </div>

                        <div class="col-md-5 col-md-offset-1">
                            <p style="font-size: 15px"><b>Jurisdiction Level : </b>{{ $news->jurisdictionLevel->name }}</p>
                            @if($news->district)
                                <p style="font-size: 15px"><b>District : </b>{{ $news->district->name }}</p>
                            @endif
                            @if($news->thana)
                                <p style="font-size: 15px"><b>Thana : </b>{{ $news->thana->name }}</p>
                            @endif
                            @if($news->user)
                                <p style="font-size: 15px"><b>Created by : </b>{{ $news->user->name }}</p>
                            @endif
                            @if($news->approved_by)
                                <p style="font-size: 15px"><b>Approved by : </b>{{ $news->approver->name }}</p>
                            @endif
                            @if($news->approval_date)
                                <p style="font-size: 15px"><b>Approval date : </b>{{ date('d-m-Y', strtotime($news->approval_date)) }}</p>
                            @endif
                            @if($news->status)
                                <p style="font-size: 15px"><b>Status : </b>{{ $news->status==1 ? 'Published' : 'Unpublished' }}</p>
                            @endif
                            @if($news->created_at)
                                <p style="font-size: 15px"><b>Created at : </b>{{ $news->created_at->diffForHumans() }}</p>
                            @endif

                            <br>

                            @if($news->categories)
                                <p style="font-size: 15px;"><b>News category : </b>
                                    @foreach($news->categories as $category)
                                        {{ $category->category_name . ','}}
                                    @endforeach
                                </p>
                            @endif
                        </div>
                        @if(Auth::user()->can('edit-news'))
                        <div class="col-md-2">
                            <a href="{{ route('news.edit',$news->id) }}" class="btn btn-success btn-lg btn-block">Edit news</a><br>
                        @endif
                        @if(Auth::user()->can('delete-news'))
                            <button class="btn btn-danger btn-lg btn-block" data-toggle="modal" data-target="#newsDeleteModal{{$news->id}}">Delete news</button>
                            <div class="modal fade" id="newsDeleteModal{{$news->id}}" role="dialog">
                                <div class="modal-dialog modal-sm">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            <h4 class="modal-title">Delete news</h4>
                                        </div>
                                        <div class="modal-body">
                                            <p>Are you sure, you want to delete this news?</p>
                                        </div>
                                        <div class="modal-footer">
                                            {!! Form::open(['method'=>'DELETE', 'action'=>['NewsController@destroy', $news->id]]) !!}
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
                            <p>{!! $news->description !!}</p>
                        </div>

                        <div class="row" style="min-height: 120px;">
                        @if($news->newsimages)
                            @foreach($news->newsimages as $image)
                                <div class="col-md-3 more-images">
                                    <img class="img img-responsive" src="{{ asset('assets/uploads/news/' . $image->news_image) }}" alt="" style="height: 160px !important; margin-bottom: 20px;">
                                    <center>
                                        <button class="btn btn-danger" data-toggle="modal" data-target="#deleteModal{{$image->id}}">Delete</button>
                                    </center>
                                    <div class="modal fade" id="deleteModal{{$image->id}}" role="dialog">
                                        <div class="modal-dialog modal-sm">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                    <h4 class="modal-title">Delete this news</h4>
                                                </div>
                                                <div class="modal-body">
                                                    <p>Are you sure, you want to delete this image?</p>
                                                </div>
                                                <div class="modal-footer">
                                                    <a type="submit" href="{{ url('admin/news/destroyImage/'. $image->id) }}" class="btn btn-danger" style="float: left;">Yes</a>
                                                    <button type="button" class="btn btn-default" data-dismiss="modal" style="float: right; margin-left: 15px;">Cancel</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        @endif
                        </div>
                        @if(!empty($news->video))
                        <div class="row">
                            <div class="col-md-6 col-md-offset-3">
                               {!! $news->video !!}
                            </div>
                        </div>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection