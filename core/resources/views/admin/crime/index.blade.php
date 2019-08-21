@extends('layouts.master')

@section('title')

    <section class="content-header">
        <div class="row">
            <div class="col-md-6">
                <h1>Crime statistics</h1>
            </div>
        </div>
        <ol class="breadcrumb">
            <li>
                <a href="{{ route('dashboard') }}">
                    <i class="fa fa-fw fa-home"></i>Dashboard
                </a>
            </li>
            <li>
                <a href="#">Crime statistics</a>
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
                            Crime statistics details
                        </h3>
                        <span class="pull-right">
                            <i class="fa fa-fw fa-times removepanel clickable"></i>
                            <i class="fa fa-fw fa-chevron-up clickable"></i>
                        </span>
                    </div>
                    <div class="panel-body">
                        @if($statistics)
                            @foreach($statistics as $statistic)
                                <div class="col-md-4">
                                    <div class="table-responsive">
                                        <table class="table" id="table">
                                            <tr>
                                                <th class="text-left">Robbery</th>
                                                <td class="text-center">{{ $statistic->robbery }}</td>
                                            </tr>
                                            <tr>
                                                <th class="text-left">Murder</th>
                                                <td class="text-center">{{ $statistic->murder }}</td>
                                            </tr>
                                            <tr>
                                                <th class="text-left">Speedy trial</th>
                                                <td class="text-center">{{ $statistic->speedy_trial }}</td>
                                            </tr>
                                            <tr>
                                                <th class="text-left">Riot</th>
                                                <td class="text-center">{{ $statistic->riot }}</td>
                                            </tr>
                                            <tr>
                                                <th class="text-left">Women & child Repression</th>
                                                <td class="text-center">{{ $statistic->women_child }}</td>
                                            </tr>
                                            <tr>
                                                <th class="text-left">Kidnapping</th>
                                                <td class="text-center">{{ $statistic->kidnapping }}</td>
                                            </tr>
                                            <tr>
                                                <th class="text-left">Police assault</th>
                                                <td class="text-center">{{ $statistic->police_assault }}</td>
                                            </tr>
                                            <tr>
                                                <th class="text-left">Burglary</th>
                                                <td class="text-center">{{ $statistic->burglary }}</td>
                                            </tr>
                                            <tr>
                                                <th class="text-left">Theft</th>
                                                <td class="text-center">{{ $statistic->theft }}</td>
                                            </tr>
                                            <tr>
                                                <th class="text-left">Other</th>
                                                <td class="text-center">{{ $statistic->other }}</td>
                                            </tr>
                                            <tr>
                                                <th class="text-left">Total</th>
                                                <td class="text-center">{{ $statistic->total }}</td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                                <div class="col-md-4 col-md-offset-2">
                                    <div class="text-center">
                                        <br><br>
                                        <p><b>Note : </b>You are not allowed to create more than one crime statistics. If you try, you might face inconceivable errors. Please edit this one and make changes.</p><br><br>
                                        <a href="{{ route('crime-statistics.edit', $statistic->id) }}" class="btn btn-primary btn-lg btn-block">Edit</a>

                                        {{--<button class="btn btn-danger btn-lg" data-toggle="modal" data-target="#deleteModal{{$statistic->id}}">Delete</button>--}}

                                        {{--<div class="modal fade" id="deleteModal{{$statistic->id}}" role="dialog">--}}
                                            {{--<div class="modal-dialog modal-sm">--}}
                                                {{--<div class="modal-content">--}}
                                                    {{--<div class="modal-header">--}}
                                                        {{--<button type="button" class="close" data-dismiss="modal">&times;</button>--}}
                                                        {{--<h4 class="modal-title">Delete crime statistics details</h4>--}}
                                                    {{--</div>--}}
                                                    {{--<div class="modal-body">--}}
                                                        {{--<p>Are you sure, you want to delete this statistics?</p>--}}
                                                    {{--</div>--}}
                                                    {{--<div class="modal-footer">--}}
                                                        {{--{!! Form::open(['method'=>'DELETE', 'action'=>['CrimeStatisticsController@destroy', $statistic->id]]) !!}--}}
                                                        {{--<button type="submit" class="btn btn-danger" style="float: left;">Yes</button>--}}
                                                        {{--{!! Form::close() !!}--}}
                                                        {{--<button type="button" class="btn btn-default" data-dismiss="modal" style="float: right; margin-left: 15px;">Cancel</button>--}}
                                                    {{--</div>--}}
                                                {{--</div>--}}
                                            {{--</div>--}}
                                        {{--</div>--}}
                                    </div>
                                </div>
                            @endforeach
                        @endif
                    </div>
                </div>
            </div>
    </section>
@endsection