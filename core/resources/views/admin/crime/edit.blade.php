@extends('layouts.master')

@section('customCss')
    <!--page level css -->
    <link href="{{ asset('assets/backend/vendors/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('assets/backend/vendors/summernote/summernote.css') }}" rel="stylesheet" media="screen" type="text/css" >
    <link href="{{asset('assets/backend/css/icheck.css')}}" rel="stylesheet" type="text/css"/>
    <link href="{{ asset('assets/backend/vendors/jasny-bootstrap/css/jasny-bootstrap.css') }}" rel="stylesheet" />
    <!--end of page level css-->
@endsection

@section('title')

    <section class="content-header">
        <div class="row">
            <div class="col-md-6">
                <h1>Create crime statistics</h1>
            </div>
        </div>
        <ol class="breadcrumb">
            <li>
                <a href="{{ route('dashboard') }}">
                    <i class="fa fa-fw fa-home"></i>Dashboard
                </a>
            </li>
            <li>
                <a href="#">Create crime statistics</a>
            </li>
        </ol>
    </section>

@endsection

@section('content')
    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="panel-body">
                    {!! Form::model($statistics, ['method'=>'PATCH', 'action'=>['CrimeStatisticsController@update', $statistics->id], 'class'=>'form-horizontal']) !!}
                    <h3 class="text-center"><b>Note : </b>Please enter the number of cases in each field according to the field name.</h3><br><br>
                    <div class="cd-block">
                        <div class="cd-content">
                            <div class="form-group">
                                <label class="col-lg-2 control-label">
                                    Robbery
                                    <span class='require'>*</span>
                                </label>
                                <div class="col-lg-6">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="fa fa-sun-o text-primary"></i>
                                        </span>
                                        <input type="text" placeholder="Robbery" name="robbery" id="robbery" class="form-control" value="{{$statistics->robbery}}">
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    @include('admin.includes.form-errors', ['field'=>'robbery'])
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="cd-block">
                        <div class="cd-content">
                            <div class="form-group">
                                <label class="col-lg-2 control-label">
                                    Murder
                                    <span class='require'>*</span>
                                </label>
                                <div class="col-lg-6">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="fa fa-sun-o text-primary"></i>
                                        </span>
                                        <input type="text" placeholder="Murder" name="murder" id="murder" class="form-control" value="{{$statistics->murder}}">
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    @include('admin.includes.form-errors', ['field'=>'murder'])
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="cd-block">
                        <div class="cd-content">
                            <div class="form-group">
                                <label class="col-lg-2 control-label">
                                    Speedy trial
                                    <span class='require'>*</span>
                                </label>
                                <div class="col-lg-6">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="fa fa-sun-o text-primary"></i>
                                        </span>
                                        <input type="text" placeholder="Speedy trial" name="speedy_trial" id="speedy-trial" class="form-control" value="{{$statistics->speedy_trial}}">
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    @include('admin.includes.form-errors', ['field'=>'speedy_trial'])
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="cd-block">
                        <div class="cd-content">
                            <div class="form-group">
                                <label class="col-lg-2 control-label">
                                    Riot
                                    <span class='require'>*</span>
                                </label>
                                <div class="col-lg-6">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="fa fa-sun-o text-primary"></i>
                                        </span>
                                        <input type="text" placeholder="Riot" name="riot" id="riot" class="form-control" value="{{$statistics->riot}}">
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    @include('admin.includes.form-errors', ['field'=>'riot'])
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="cd-block">
                        <div class="cd-content">
                            <div class="form-group">
                                <label class="col-lg-2 control-label">
                                    Woman & child repression
                                    <span class='require'>*</span>
                                </label>
                                <div class="col-lg-6">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="fa fa-sun-o text-primary"></i>
                                        </span>
                                        <input type="text" placeholder="Woman & child repression" name="women_child" id="women-child" class="form-control" value="{{ $statistics->women_child }}">
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    @include('admin.includes.form-errors', ['field'=>'women_child'])
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="cd-block">
                        <div class="cd-content">
                            <div class="form-group">
                                <label class="col-lg-2 control-label">
                                    Kidnapping
                                    <span class='require'>*</span>
                                </label>
                                <div class="col-lg-6">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="fa fa-sun-o text-primary"></i>
                                        </span>
                                        <input type="text" placeholder="Kidnapping" name="kidnapping" id="kidnapping" class="form-control" value="{{ $statistics->kidnapping }}">
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    @include('admin.includes.form-errors', ['field'=>'kidnapping'])
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="cd-block">
                        <div class="cd-content">
                            <div class="form-group">
                                <label class="col-lg-2 control-label">
                                    Police assault
                                    <span class='require'>*</span>
                                </label>
                                <div class="col-lg-6">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="fa fa-sun-o text-primary"></i>
                                        </span>
                                        <input type="text" placeholder="Police assault " name="police_assault" id="police-assault" class="form-control" value="{{ $statistics->police_assault }}">
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    @include('admin.includes.form-errors', ['field'=>'police_assault'])
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="cd-block">
                        <div class="cd-content">
                            <div class="form-group">
                                <label class="col-lg-2 control-label">
                                    Burglary
                                    <span class='require'>*</span>
                                </label>
                                <div class="col-lg-6">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="fa fa-sun-o text-primary"></i>
                                        </span>
                                        <input type="text" placeholder="Burglary" name="burglary" id="burglary" class="form-control" value="{{ $statistics->burglary }}">
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    @include('admin.includes.form-errors', ['field'=>'burglary'])
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="cd-block">
                        <div class="cd-content">
                            <div class="form-group">
                                <label class="col-lg-2 control-label">
                                    Theft
                                    <span class='require'>*</span>
                                </label>
                                <div class="col-lg-6">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="fa fa-sun-o text-primary"></i>
                                        </span>
                                        <input type="text" placeholder="Theft" name="theft" id="theft" class="form-control" value="{{ $statistics->theft }}">
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    @include('admin.includes.form-errors', ['field'=>'theft'])
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="cd-block">
                        <div class="cd-content">
                            <div class="form-group">
                                <label class="col-lg-2 control-label">
                                    Other cases
                                    <span class='require'>*</span>
                                </label>
                                <div class="col-lg-6">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="fa fa-sun-o text-primary"></i>
                                        </span>
                                        <input type="text" placeholder="Other cases" name="other" id="other" class="form-control" value="{{ $statistics->other }}">
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    @include('admin.includes.form-errors', ['field'=>'other'])
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="cd-block">
                        <div class="cd-content">
                            <div class="form-group">
                                <label class="col-lg-2 control-label">
                                    Total cases
                                    <span class='require'>*</span>
                                </label>
                                <div class="col-lg-6">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="fa fa-sun-o text-primary"></i>
                                        </span>
                                        <input type="text" placeholder="Total cases" name="total" id="total" class="form-control" value="{{ $statistics->total }}">
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    @include('admin.includes.form-errors', ['field'=>'total'])
                                </div>
                            </div>
                        </div>
                    </div>

                    <br><br>
                    <div class="form-group">
                        <div class="col-lg-offset-2 col-lg-10">
                            <button class="btn btn-primary" type="submit">Update</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

@endsection

@section('customJs')
    <script src="{{ asset('assets/backend/vendors/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js') }}" type="text/javascript"></script>
    <script src="{{ asset('assets/backend/vendors/ckeditor/ckeditor.js') }}" type="text/javascript" ></script>
    <script src="{{ asset('assets/backend/vendors/ckeditor/adapters/jquery.js') }}" type="text/javascript" ></script>
    <script src="{{ asset('assets/backend/vendors/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.js') }}" type="text/javascript" ></script>
    <script src="{{ asset('assets/backend/vendors/summernote/summernote.min.js') }}" type="text/javascript" ></script>
    <script src="{{ asset('assets/backend/js/custom_js/form_editors.js') }}" type="text/javascript"></script>
    <script src="{{asset('assets/backend/vendors/jasny-bootstrap/js/jasny-bootstrap.js')}}" type="text/javascript"></script>
    <!-- end of page level js -->
@endsection