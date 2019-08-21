@extends('layouts.master')

@section('title')

    <section class="content-header">
        <div class="row">
            <div class="col-md-6">
                <h1>Deputy Inspector Generals</h1>
            </div>
            <div class="col-md-6">
                <h1><a href="{{ route('dig.create') }}" class="btn btn-primary pull-right">New DIG</a></h1>
            </div>
        </div>
        <ol class="breadcrumb">
            <li>
                <a href="{{ route('dashboard') }}">
                    <i class="fa fa-fw fa-home"></i>Dashboard
                </a>
            </li>
            <li>
                <a href="#">DIG</a>
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
                            Respected DIG's
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
                                    <th>Photo</th>
                                    <th>Name</th>
                                    <th>Joined on</th>
                                    <th>Left On</th>
                                    @if(Auth::user()->can('edit-dig'))
                                    <th>Actions</th>
                                    @endif
                                </tr>
                                </thead>
                                <tbody>

                                @if($digs)
                                    @foreach($digs as $key => $dig)

                                        <tr>
                                            <td>{{ ++$key }}</td>
                                            <td>
                                                @if($dig->photo)
                                                    <img src="{{ asset('assets/uploads/dig/'.$dig->photo) }}" height="80px" width="60px" alt="">
                                                @else
                                                {{ 'Photo not available' }}
                                                @endif
                                            </td>
                                            <td>{{ $dig->dig_name }}</td>
                                            <td width="20%">{{ date('d/m/Y', strtotime($dig->period_from)) }}</td>
                                            <td width="20%">{{$dig->period_to ? date('d/m/Y', strtotime($dig->period_to)) : 'Still on duty'}}</td>
                                            @if(Auth::user()->can('edit-dig'))
                                            <td>
                                                <a href="{{ route('dig.show', $dig->id) }}"><i class="fa fa-fw fa-eye icon-viewcolor"></i></a>
                                                <a href="{{ route('dig.edit', $dig->id) }}"><i class="fa fa-fw fa-pencil icon-editcolor"></i></a>
                                            </td>
                                            @endif
                                        </tr>

                                    @endforeach
                                @endif

                                </tbody>
                            </table>
                        </div>

                        <div class="text-right">
                            {{$digs->links()}}
                        </div>

                    </div>
                </div>
            </div>
    </section>
@endsection