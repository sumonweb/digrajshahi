@extends('layouts.master')

@section('title')

    <section class="content-header">
        <div class="row">
            <div class="col-md-6">
                <h1>All sliders</h1>
            </div>
            <div class="col-md-6">
                <h1><a href="{{ route('slider.create') }}" class="btn btn-primary pull-right">Create new slider</a></h1>
            </div>
        </div>
        <ol class="breadcrumb">
            <li>
                <a href="index.html">
                    <i class="fa fa-fw fa-home"></i>Dashboard
                </a>
            </li>
            <li>
                <a href="#">All sliders</a>
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

    <section class="content paddingleft_right15">
        <div class="row">
            <div class="col-lg-12">
                <!-- First Basic Table strats here-->
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">
                            <i class="fa fa-fw fa-bell-o"></i>
                            All sliders
                        </h3>
                        <span class="pull-right">
                                    <i class="fa fa-fw fa-times removepanel clickable"></i>
                                    <i class="fa fa-fw fa-chevron-up clickable"></i>
                                </span>
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table class="table" id="table">
                                <thead>
                                <tr class="filters">
                                    <th>Image</th>
                                    <th>Caption</th>
                                    <th>Status</th>
                                    <th>Created At</th>
                                    <th>Actions</th>
                                </tr>
                                </thead>
                                <tbody>

                                @if($sliders)
                                    @foreach($sliders as $slider)

                                <tr>
                                    <td><img src="{{ asset('assets/uploads/homeSlider/' . $slider->slider_image) }}" alt="" width="100px" height="50px"></td>
                                    <td>{{ $slider->caption ? str_limit($slider->caption, 15) : 'No caption given' }}</td>
                                    <td>
                                       {{$slider->status == 1 ? 'Active' : 'Deactivated'}}
                                    </td>
                                    <td>{{ $slider->created_at->diffForHumans() }}</td>
                                    <td>
                                        <a href="{{route('slider.edit', $slider->id)}}"><i class="fa fa-fw fa-pencil icon-editcolor"></i></a>

                                        <i class="fa fa-fw fa-times icon-deletecolor" data-toggle="modal" data-target="#myModal{{$slider->id}}"></i>

                                        <div class="modal fade" id="myModal{{$slider->id}}" role="dialog">
                                            <div class="modal-dialog modal-sm">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                        <h4 class="modal-title">Delete Slider</h4>
                                                    </div>
                                                    <div class="modal-body">
                                                        <p>Are you sure, you want to delete this slider</p>
                                                    </div>
                                                    <div class="modal-footer">
                                                        {!! Form::open(['method'=>'DELETE', 'action'=>['SliderController@destroy', $slider->id]]) !!}
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

                        <div class="text-right">
                            {{$sliders->links()}}
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection