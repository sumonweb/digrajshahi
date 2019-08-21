@extends('layouts.master')

@section('customCss')
	<style type="text/css">
		.table tr td, .table tr th{
			border: 0px solid !important;
		}
	</style>
@endsection

@section('title')
	<section class="content-header">
		<div class="row">
			<div class="col-md-6">
				<h1>Thana details</h1>
			</div>
			<div class="col-md-6">
				<h1><a href="{{ route('thana.index') }}" class="btn btn-primary pull-right">Return to thana list</a></h1>
			</div>
		</div>
		<ol class="breadcrumb">
			<li>
				<a href="{{ route('dashboard') }}">
					<i class="fa fa-fw fa-home"></i>Dashboard
				</a>
			</li>
			<li>
				<a href="#">Thana details</a>
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
							<i class="fa fa-user"></i>
							Thana details
						</h3>
						<span class="pull-right">
                            <i class="fa fa-fw fa-times removepanel clickable"></i>
                            <i class="fa fa-fw fa-chevron-up clickable"></i>
                        </span>
					</div>
					<div class="panel-body">
						<div class="col-md-5 text-center" style="margin-top: 100px;">
							@if($thana->thana_image)
								<img src="{{ asset('assets/uploads/thana/'.$thana->thana_image) }}" class="img img-responsive" alt="">
							@else
								<p style="float: right; margin: 60px 20px;">{{'Thana image not available'}}</p>
							@endif
						</div>
						<div class="col-md-6">
							<table class="table" id="table">
								<tbody>
								<tr class="filters">
									<th>Thana name</th>
									<td>{{ $thana->name}}</td>
								</tr>
								<tr class="filters">
									<th>District</th>
									<td>{{ $thana->district->name }}</td>
								</tr>

								<tr>
									<th>Created at</th>
									<td>{{ $thana->created_at->diffForHumans() }}</td>
								</tr>
								</tbody>
							</table>
						</div>
						<div class="col-md-12">
							{!! !empty($thana->about_thana) ? 'About thana : '. $thana->about_thana: '' !!}
						</div>
						<br><br>
						<div class="col-md-12">
							{!! !empty($thana->map) ? $thana->map : '' !!}
						</div>

					</div>
				</div>
			</div>
		</div>
	</section>
@endsection