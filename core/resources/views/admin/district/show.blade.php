@extends('layouts.master')

@section('customCss')
	<style type="text/css">
		.table tr td, .table tr th{
			border: 0px solid !important;
		}
		.message p{
			font-size: 14px;
			font-family: Helvetica;
		}
	</style>
@endsection

@section('title')
	<section class="content-header">
		<div class="row">
			<div class="col-md-6">
				<h1>District details</h1>
			</div>
			<div class="col-md-6">
				<h1><a href="{{ route('district.index') }}" class="btn btn-primary pull-right">Return to districts list</a></h1>
			</div>
		</div>
		<ol class="breadcrumb">
			<li>
				<a href="{{ route('dashboard') }}">
					<i class="fa fa-fw fa-home"></i>Dashboard
				</a>
			</li>
			<li>
				<a href="#">District details</a>
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
							District details
						</h3>
						<span class="pull-right">
                            <i class="fa fa-fw fa-times removepanel clickable"></i>
                            <i class="fa fa-fw fa-chevron-up clickable"></i>
                        </span>
					</div>
					<div class="panel-body">
						<div class="col-md-5 text-center">
							@if($district->cover_image)
								<img src="{{asset('assets/uploads/districtCoverImage/'.$district->cover_image)}}" alt="" width="100%" class="img img-responsive" style="margin-bottom: 25px;">
							@else
								<p style="float: right; margin: 60px 20px;">{{'District cover image not available'}}</p>
							@endif
						</div>
						<div class="col-md-6">
							<table class="table" id="table">
								<tbody>
								<tr class="filters">
									<th>District name (Bangla)</th>
									<td>{{ $district->name }}</td>
								</tr>
								<tr>
									<th>District name (English)</th>
									<td>{{$district->name_english}}</td>
								</tr>
								</tbody>
							</table>
							<div style="margin: 30px 10px;" class="message">
								<p><b>About district: </b> {!! $district->about_district !!}</p>
							</div>
						</div>

						<div class="col-md-5 text-center">
							@if($district->sp_photo)
								<img src="{{asset('assets/uploads/sp/'.$district->sp_photo)}}" alt="" class="img img-responsive" style="margin-bottom: 25px;">
							@else
								<p style="float: right; margin: 60px 20px;">{{'SP image not available'}}</p>
							@endif
						</div>
						<div class="col-md-6">
							<table class="table" id="table">
								<tbody>
								<tr class="filters">
									<th>SP name</th>
									<td>{{ $district->sp_name }}</td>
								</tr>
								</tbody>
							</table>
							<div style="margin: 30px 10px;" class="message">
								<p><b>SP message :</b>{!! $district->message !!}</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
@endsection