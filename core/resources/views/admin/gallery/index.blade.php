@extends('layouts.master')

@section('title')
    <section class="content-header">
        <div class="row">
            <div class="col-md-6">
                <h1>All gallery items</h1>
            </div>
            <div class="col-md-6">
                <h1><a href="{{ route('gallery.create') }}" class="btn btn-primary pull-right">Create new gallery</a></h1>
            </div>
        </div>
        <ol class="breadcrumb">
            <li>
                <a href="{{ route('dashboard') }}">
                    <i class="fa fa-fw fa-home"></i>Dashboard
                </a>
            </li>
            <li>
                <a href="#">All gallery items</a>
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
                            Gallery items
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
                                    <th>Gallery name</th>
                                    <th>Status</th>
                                    <th>Created at</th>
                                    <th>Created by</th>
                                    <th class="text-center">Actions</th>
                                </tr>
                                </thead>
                                <tbody>

                                @if($galleries)
                                    @foreach($galleries as $key => $gallery)

                                        <tr>
                                            <td>{{ ++$key }}</td>
                                            <td>{{ $gallery->gallery_name }}</td>
                                            <td>
                                                {{ $gallery->status==1 ? 'Published' : 'Unpublished'}}
                                            </td>
                                            <td>{{ $gallery->created_at ? $gallery->created_at->diffForHumans() : 'Not available' }}</td>
                                            <td>{{ $gallery->user->name }}</td>
                                            <td class="text-center">
                                                <a href="{{ route('gallery.show', $gallery->id) }}" class="btn btn-primary btn-xs">view</a>
                                            </td>
                                        </tr>
                                    @endforeach
                                @endif
                                </tbody>
                            </table>
                        </div>

                        <div class="text-right">
                            {{$galleries->links()}}
                        </div>

                    </div>
                </div>
            </div>
    </section>
@endsection