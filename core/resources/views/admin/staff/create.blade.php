@extends('layouts.master')

@section('customCss')
    <link href="{{ asset('assets/backend/vendors/jasny-bootstrap/css/jasny-bootstrap.css') }}" rel="stylesheet" />
    <link href="{{ asset('assets/backend/vendors/bootstrapvalidator/css/bootstrapValidator.min.css') }}" rel="stylesheet"/>
    <link href="{{ asset('assets/backend/vendors/select2/css/select2.min.css') }}" rel="stylesheet"/>
    <link href="{{ asset('assets/backend/vendors/select2/select2-bootstrap.css') }}" rel="stylesheet"/>
    <link href="{{asset('assets/backend/css/custom_css/addnew_user.css')}}" rel="stylesheet" type="text/css"/>
    <link href="{{asset('assets/backend/css/icheck.css')}}" rel="stylesheet" type="text/css"/>
@endsection

@section('title')

    <section class="content-header">
        <div class="row">
            <div class="col-md-6">
                <h1>Create staff</h1>
            </div>
        </div>
        <ol class="breadcrumb">
            <li>
                <a href="{{route('dashboard')}}">
                    <i class="fa fa-fw fa-home"></i>Dashboard
                </a>
            </li>
            <li>
                <a href="#">Create new staff</a>
            </li>
        </ol>
    </section>

@endsection

@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="panel-body">
                <div class="position-center">
                    <div>
                        <h3 class="text-primary">Staff Information</h3>
                    </div>
                    {!! Form::open(['method'=>'POST', 'action'=>'StaffController@store', 'class'=>'form-horizontal', 'files'=>true]) !!}
                    <div class="cd-block">
                        <div class="cd-content">
                            <div class="form-group">
                                <label class="col-lg-2 control-label">
                                    Staff Name
                                    <span class='require'>*</span>
                                </label>
                                <div class="col-lg-6">
                                    <div class="input-group">
                                       <span class="input-group-addon">
                                           <i class="fa fa-fw fa-user-md text-primary"></i>
                                       </span>
                                        <input type="text" placeholder="Full Name" name="staff_name" id="name" class="form-control">
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    @include('admin.includes.form-errors', ['field'=>'staff_name'])
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="cd-block">
                        <div class="cd-content">
                            <div class="form-group">
                                <label class="col-lg-2 control-label">
                                    Surname
                                </label>
                                <div class="col-lg-6">
                                    <div class="input-group">
                                       <span class="input-group-addon">
                                           <i class="fa fa-trophy text-primary"></i>
                                       </span>
                                        <input type="text" placeholder="Surname" name="surname" id="surname" class="form-control">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-2 control-label">Staff image <span class='require'>*</span></label>
                        <div class="col-lg-6">
                            <div class="fileinput fileinput-new" data-provides="fileinput">
                                <div class="fileinput-new thumbnail" style="width: 200px; height: 150px;">
                                    <img data-src="holder.js/200x150" alt="..."></div>
                                <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px;"></div>
                                <div>
                                   <span class="btn btn-primary btn-file">
                                       <span class="fileinput-new">Select image</span>
                                       <span class="fileinput-exists">Change</span>
                                       <input type="file" name="photo">
                                   </span>
                                    <a href="#" class="btn btn-primary fileinput-exists" data-dismiss="fileinput">Remove</a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="cd-block">
                        <div class="cd-content">
                            <div class="form-group">
                                <label class="col-lg-2 control-label">
                                    BP number
                                    <span class='require'>*</span>
                                </label>
                                <div class="col-lg-6">
                                    <div class="input-group">
                                       <span class="input-group-addon">
                                           <i class="fa fa-meh-o text-primary"></i>
                                       </span>
                                        <input type="text" placeholder="Bangladesh Police Batch number" name="bp_no" id="bp-number" class="form-control">
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    @include('admin.includes.form-errors', ['field'=>'bp_no'])
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="cd-block">
                        <div class="cd-content">
                            <div class="form-group">
                                <label class="control-label  col-md-2"> Designation </label>
                                <div class="col-md-6">
                                    <select name="designation" id="designation" class="form-control select2">
                                        <option>Please select</option>
                                        <option value="Deputy Inspector General">Deputy Inspector General</option>
                                        <option value="Additional DIG">Additional DIG</option>
                                        <option value="Superintendent of Police">Superintendent of Police</option>
                                        <option value="Additional SP">Additional SP</option>
                                        <option value="Assistant Superintendent of Police">Assistant Superintendent of Police</option>
                                        <option value="Inspector">Inspector</option>
                                        <option value="Sub Inspector">Sub Inspector</option>
                                        <option value="Assistant Sub Inspector">Assistant Sub Inspector</option>
                                        <option value="Constable">Constable</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="cd-block">
                        <div class="cd-content">
                            <div class="form-group">
                                <label class="col-lg-2 control-label">
                                    Email
                                </label>
                                <div class="col-lg-6">
                                    <div class="input-group">
                                       <span class="input-group-addon">
                                           <i class="fa fa-envelope-o text-primary"></i>
                                       </span>
                                        <input type="email" placeholder="Email" name="email" id="email" class="form-control">
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    @include('admin.includes.form-errors', ['field'=>'email'])
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-2 control-label">
                            Mobile
                            <span class='require'>*</span>
                        </label>
                        <div class="col-lg-6">
                            <div class="input-group">
                               <span class="input-group-addon">
                                   <i class="fa fa-fw fa-mobile text-primary"></i>
                               </span>
                                <input type="text" placeholder="Mobile Number" id="mobile" name="mobile" class="form-control">
                            </div>
                        </div>
                        <div class="col-lg-4">
                            @include('admin.includes.form-errors', ['field'=>'mobile'])
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-2 control-label">
                            Office telephone
                        </label>
                        <div class="col-lg-6">
                            <div class="input-group">
                               <span class="input-group-addon">
                                   <i class="fa fa-fw fa-phone text-primary"></i>
                               </span>
                                <input type="text" placeholder="Office telephone" id="phone" name="phone" class="form-control">
                            </div>
                        </div>
                        <div class="col-lg-4">
                            @include('admin.includes.form-errors', ['field'=>'phone'])
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-2 control-label">
                            Department
                        </label>
                        <div class="col-lg-6">
                            <div class="input-group">
                               <span class="input-group-addon">
                                   <i class="fa fa-building text-primary"></i>
                               </span>
                                <input type="text" placeholder="Department" id="department" name="department" class="form-control">
                            </div>
                        </div>
                    </div>

                    <br><br>
                    <div class="form-group">
                        <div class="col-lg-offset-2 col-lg-10">
                            <button class="btn btn-primary" type="submit">Create</button>
                        </div>
                    </div>
                    {!! Form::close() !!}
                </div>
            </div>
        </div>
    </div>
@endsection

@section('customJs')
    <script src="{{ asset('assets/backend/vendors/jasny-bootstrap/js/jasny-bootstrap.js') }}" type="text/javascript"></script>
    <script src="{{ asset('assets/backend/vendors/bootstrapvalidator/js/bootstrapValidator.min.js') }}" type="text/javascript" ></script>
    <script src="{{ asset('assets/backend/vendors/select2/js/select2.js') }}" type="text/javascript"></script>
    <script src="{{ asset('assets/backend/js/custom_js/addnew_user.js') }}" type="text/javascript"></script>
@endsection