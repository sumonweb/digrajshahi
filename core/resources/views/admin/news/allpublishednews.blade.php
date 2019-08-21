@extends('layouts.master')

@section('title')
    <section class="content-header">
        <div class="row">
            <div class="col-md-6">
                <h1>Published News</h1>
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
                <a href="#">All Published News</a>
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
                            Published News List
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
                                    <th>Created At</th>
                                    <th>Created by</th>
                                    <th>Updated by</th>
                                    <th class="text-center">Actions</th>
                                </tr>
                                </thead>
                                <tbody>

                                @if($allpublishednews)
                                    @foreach($allpublishednews as $key => $news)

                                        <tr>
                                            <td>{{ ++$key }}</td>
                                            <td>{{ str_limit($news->title, 30).'...' }}</td>
                                            <td>{{ $news->jurisdictionLevel->name }}</td>
                                            <td width="20%">{{ !empty($news->district_id) ? $news->district->name : '' }}  {{ !empty($news->thana_id) ? '/ ' . $news->thana->name : '' }}</td>
                                            <td>{{ $news->created_at ? $news->created_at->diffForHumans() : 'Not available' }}</td>
                                            <td>{{ $news->user->name }}</td>
                                            <td>{{ $news->approver == null ? 'Not available' : $news->approver->name }}</td>
                                            <td class="text-center">
                                                @if(Auth::user()->can('change-news-status'))
                                                    @if ($news->status == 1)
                                                        <a href="{{ url('admin/news/unpublish/'.$news->id) }}" class="btn btn-warning btn-xs">Unpublish</a>
                                                    @endif
                                                    @if ($news->status == 0)
                                                        <a href="{{ url('admin/news/publish/'.$news->id) }}" class="btn btn-success btn-xs">Publish</a>
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
                            {{$allpublishednews->links()}}
                        </div>

                    </div>
                </div>
            </div>
    </section>
@endsection