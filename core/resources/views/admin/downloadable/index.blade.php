@extends('layouts.master')

@section('title')

    <section class="content-header">
        <div class="row">
            <div class="col-md-6">
                <h1>Downloadable items list</h1>
            </div>
            <div class="col-md-6">
                <h1><a href="{{ route('downloadable.create') }}" class="btn btn-primary pull-right">Create downloadable item</a></h1>
            </div>
        </div>
        <ol class="breadcrumb">
            <li>
                <a href="{{route('dashboard')}}">
                    <i class="fa fa-fw fa-home"></i>Dashboard
                </a>
            </li>
            <li>
                <a href="#">Downloadable items list</a>
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
                            Downloadable items list
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
                                    <th>Sl</th>
                                    <th>Title</th>
                                    <th>Created by</th>
                                    <th>Status</th>
                                    <th>Created at</th>
                                    <th>Actions</th>
                                </tr>
                                </thead>
                                <tbody>

                                @if($downloadable)
                                    @foreach($downloadable as $key => $item)

                                        <tr>
                                            <td>{{ ++$key }}</td>
                                            <td>{{ $item->title }}</td>
                                            <td>
                                                {{ $item->user->name  }}
                                            </td>
                                            <td>{{ $item->status == 1 ? 'Active' : 'Deactivated' }}</td>
                                            <td>{{ $item->created_at->diffForHumans() }}</td>

                                            <td>
                                                <a href="#" onclick="window.open
                                                        ('{{asset('assets/uploads/downloadcorner/'.$item->file)}}', '_blank', 'fullscreen=yes'); return false;" class="btn btn-primary btn-xs">view</a>
                                                <a href="{{ route('downloadable.edit', $item->id) }}" class="btn btn-primary btn-xs">Edit</a>

                                                <button class="btn btn-danger btn-xs" data-toggle="modal" data-target="#deleteModal{{$item->id}}">Delete</button>



                                                <div class="modal fade" id="deleteModal{{$item->id}}" role="dialog">
                                                    <div class="modal-dialog modal-sm">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                                <h4 class="modal-title">Delete this downloadable item</h4>
                                                            </div>
                                                            <div class="modal-body">
                                                                <p>Are you sure, you want to delete this downloadable item from the list?</p>
                                                            </div>
                                                            <div class="modal-footer">
                                                                {!! Form::open(['method'=>'DELETE', 'action'=>['DownloadableController@destroy', $item->id]]) !!}
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
                            {{$downloadable->links()}}
                        </div>

                    </div>
                </div>
            </div>
    </section>
@endsection