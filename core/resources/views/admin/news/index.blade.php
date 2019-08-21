@extends('layouts.master')

@section('title')
    <section class="content-header">
        <div class="row">
            <div class="col-md-6">
                <h1>All News</h1>
            </div>
            <div class="col-md-6">
                <h1><a href="{{ route('news.create') }}" class="btn btn-primary pull-right">Create news</a></h1>
            </div>
        </div>
        <ol class="breadcrumb">
            <li>
                <a href="index.html">
                    <i class="fa fa-fw fa-home"></i>Dashboard
                </a>
            </li>
            <li>
                <a href="#">All News</a>
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
                            All News List
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
                                    <th>Title</th>
                                    <th>Jurisdiction Level</th>
                                    <th>Jurisdiction Name</th>
                                    <th>Status</th>
                                    <th>Created at</th>
                                    <th>Created by</th>
                                    <th class="text-center">Actions</th>
                                </tr>
                                </thead>
                                <tbody>

                                @if($all_news)
                                    @foreach($all_news as $key => $news)

                                        <tr>
                                            <td>{{ ++$key }}</td>
                                            <td>{{ str_limit($news->title, 30).'...' }}</td>
                                            <td>{{ $news->jurisdictionLevel->name }}</td>
                                            <td width="20%">{{ !empty($news->district_id) ? $news->district->name : '' }}  {{ !empty($news->thana_id) ? '/ ' . $news->thana->name : '' }}</td>
                                            <td>
                                                {{ $news->status==1 ? 'Published' : 'Unpublished'}}
                                            </td>
                                            <td>{{ $news->created_at ? $news->created_at->diffForHumans() : 'Not available' }}</td>
                                            <td>{{ $news->user ? $news->user->name : 'Not available'}}</td>
                                            <td class="text-center">
                                                @if(Auth::user()->can('change-news-status'))
                                                    @if ($news->status == 1)
                                                        <a href="{{ url('admin/news/unpublish/'.$news->id) }}" class="btn btn-warning btn-xs">Unpublish</a>
                                                    @endif
                                                    @if ($news->status == 0)
                                                        @if(Auth::user()->hasRole('admin') OR Auth::user()->hasRole('super-admin'))
                                                            <a href="{{ url('admin/news/publish/'.$news->id) }}" class="btn btn-success btn-xs">Publish</a>
														@endif
                                                    @endif
                                                @endif
                                                 <a href="{{ route('news.show', $news->id) }}" class="btn btn-primary btn-xs">view</a>
                                            </td>
                                        </tr>
                                    @endforeach
                                @endif
                                </tbody>
                            </table>
                        </div>

                        <div class="text-right">
                            {{$all_news->links()}}
                        </div>

                    </div>
                </div>
            </div>
    </section>
@endsection