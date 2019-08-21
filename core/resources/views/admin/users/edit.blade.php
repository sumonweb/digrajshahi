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
                <h1>Edit user</h1>
            </div>
        </div>
        <ol class="breadcrumb">
            <li>
                <a href="index.html">
                    <i class="fa fa-fw fa-home"></i>Dashboard
                </a>
            </li>
            <li>
                <a href="#">Edit user</a>
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
    <div class="row">
        <div class="col-md-12">
            <div class="panel-body">
                <div class="position-center">
                    <div>
                        <h3 class="text-primary">Personal Information</h3>
                    </div>
                    {!! Form::model($user, ['method'=>'PUT', 'action'=>['UsersController@update', $user->id], 'class'=>'form-horizontal', 'files'=>true]) !!}
                    <div class="cd-block">
                        <div class="cd-content">
                            <div class="form-group">
                                <label class="col-lg-2 control-label">
                                    Name
                                    <span class='require'>*</span>
                                </label>
                                <div class="col-lg-6">
                                    <div class="input-group">
                                       <span class="input-group-addon">
                                           <i class="fa fa-fw fa-user-md text-primary"></i>
                                       </span>
                                        <input type="text" placeholder="Full Name" name="name" id="name" class="form-control" value="{{ $user->name }}">
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    @include('admin.includes.form-errors', ['field'=>'name'])
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="cd-block">
                        <div class="cd-content">
                            <div class="form-group">
                                <label class="col-lg-2 control-label">
                                    Email
                                    <span class='require'>*</span>
                                </label>
                                <div class="col-lg-6">
                                    <div class="input-group">
                                       <span class="input-group-addon">
                                           <i class="fa fa-envelope text-primary"></i>
                                       </span>
                                        <input type="text" placeholder="Email" name="email" id="email" class="form-control" value="{{ $user->email }}">
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    @include('admin.includes.form-errors', ['field'=>'email'])
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="cd-block">
                        <div class="cd-content">
                            <div class="form-group">
                                <label class="col-lg-2 control-label">
                                    Password
                                </label>
                                <div class="col-lg-6">
                                    <div class="input-group">
                                       <span class="input-group-addon">
                                           <i class="fa fa-key text-primary"></i>
                                       </span>
                                        <input type="password" placeholder="Password" name="password" id="password" class="form-control">
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    @include('admin.includes.form-errors', ['field'=>'password'])
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-2 control-label">
                            Phone/Mobile
                            <span class='require'>*</span>
                        </label>
                        <div class="col-lg-6">
                            <div class="input-group">
                               <span class="input-group-addon">
                                   <i class="fa fa-fw fa-phone text-primary"></i>
                               </span>
                                <input type="text" placeholder="Phone Number" id="phone" name="phone" class="form-control" value="{{ $user->phone }}">
                            </div>
                        </div>
                        <div class="col-lg-4">
                            @include('admin.includes.form-errors', ['field'=>'phone'])
                        </div>
                    </div>

                    <div @if(Auth::user()->hasRole('admin') || Auth::user()->hasRole('super-admin')) style="display: block;" @else style="display: none;" @endif>
                    <div class="cd-block">
                        <div class="cd-content">
                            <div class="form-group">
                                <label class="col-lg-2 control-label">
                                    BP Position
                                </label>
                                <div class="col-lg-6">
                                    <div class="input-group">
                                       <span class="input-group-addon">
                                           <i class="fa fa-id-badge text-primary"></i>
                                       </span>
                                        <input type="text" placeholder="Bangladesh Police Position" name="bp_position" id="bp-position" class="form-control" value="{{ $user->bp_position ? $user->bp_position : '' }}">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="cd-block">
                        <div class="cd-content">
                            <div class="form-group">
                                <label class="control-label  col-md-2">Jurisdiction Level <span class='require'>*</span></label></label>
                                <div class="col-md-6">
                                    <select name="jurisdiction_level_id" id="jurisdiction_level" class="form-control select2">
                                        <option>Please select</option>
                                        @if($jurisdictionlevels)
                                            @foreach($jurisdictionlevels as $jurisdictionlevel)
                                                @php
                                                $user_jurisdiction_level = $user->jurisdiction_level_id;
                                                if($user_jurisdiction_level == $jurisdictionlevel->id){
                                                    $selected = 'selected';
                                                } else{
                                                    $selected = '';
                                                }
                                                @endphp
                                                <option value="{{ $jurisdictionlevel->id }}" {{$selected}}>{{ $jurisdictionlevel->name }}</option>

                                            @endforeach
                                        @endif
                                    </select>
                                </div>
                                <div class="col-lg-4">
                                    @include('admin.includes.form-errors', ['field'=>'jurisdiction_level_id'])
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="cd-block select-2-shown select-3-shown" id="jurisdiction_district">
                        <div class="cd-content">
                            <div class="form-group">
                                <label class="control-label  col-md-2">Select district</label>
                                <div class="col-md-6">
                                    <select name="district_id" id="district-id" class="form-control select2">
                                        <option value="">Please select</option>

                                        @if($districts)
                                            @foreach($districts as $district)
                                                @php
                                                    if(!empty($user->district_id)){
                                                        $user_district = $user->district_id;
                                                        if ($user_district == $district->id ){
                                                            $selected = 'selected';
                                                        } else{
                                                            $selected = '';
                                                        }
                                                    }
                                                @endphp
                                                <option value="{{ $district->id }}" {{$selected}}>{{ $district->name }}</option>
                                            @endforeach
                                        @endif

                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="cd-block select-3-shown" id="jurisdiction_thana">
                        <div class="cd-content">
                            <div class="form-group">
                                <label class="control-label  col-md-2">Select thana</label>
                                <div class="col-md-6">
                                    <select name="thana_id" id="select2_sample4" class="form-control select2">
                                        <option value="">Please select</option>

                                        @if($thanas)
                                            @foreach($thanas as $thana)
                                                @php
                                                    if(!empty($user->thana_id)){
                                                        $user_thana = $user->thana_id;
                                                        if ($user_thana == $thana->id ){
                                                            $selected = 'selected';
                                                        } else{
                                                            $selected = ' ';
                                                        }
                                                    }
                                                @endphp
                                                <option value="{{ $thana->id }}" {{$selected}}>{{ $thana->name }}</option>
                                            @endforeach
                                        @endif

                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="cd-block select-3-shown" id="jurisdiction_thana">
                        <div class="cd-content">
                            <div class="form-group">
                                <div class="col-md-10 col-md-offset-2 help-block">
                                    This user belong to {{$user->jurisdictionlevel->name}}. If you want to assign user to other jurisdiction, then select the jurisdiction level first.
                                </div>
                            </div>
                        </div>
                    </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-2 control-label">Profile picture</label>
                        <div class="col-lg-6">
                            <div class="fileinput fileinput-new" data-provides="fileinput">
                                <div class="fileinput-new thumbnail" style="width: 200px; height: 150px;">
                                    <img data-src="holder.js/200x150" alt="..."></div>
                                @if($user->photo)
                                    <img src="{{ asset('assets/uploads/users/' . $user->photo)}}" style="max-width: 200px;max-height: 150px;margin-left: 15px;float: right;">
                                @else
                                    <p style="float: right; margin: 60px 20px;">{{'User image not available'}}</p>
                                @endif
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

                    <div @if(Auth::user()->hasRole('admin') || Auth::user()->hasRole('super-admin')) style="display: block;" @else style="display: none;" @endif>
                    <div class="cd-block">
                        <div class="cd-content">
                            <div class="form-group">
                                <label class="control-label  col-md-2">User role <span class='require'>*</span></label>
                                <div class="col-md-6">
                                    <select name="role" id="user-role" class="form-control select2">
                                        <option>Please select</option>
                                        @if($roles)
                                            @foreach($roles as $role)
                                                <option value="{{ $role->id }}" {{ in_array($role->id, $user->roles->pluck('id')->toArray()) ? 'selected' : ''}}>{{ $role->name }}</option>
                                            @endforeach
                                        @endif
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="cd-block">
                        <div class="cd-content">
                            <div class="form-group">
                                <label class="control-label  col-md-2">User activation <span class='require'>*</span></label>
                                <div class="col-md-6">
                                    <select name="status" id="user-activation" class="form-control select2">
                                        <option>Please select</option>
                                        <option value="0" {{$user->status==0 ? 'selected' : ' '}}>Inactive</option>
                                        <option value="1" {{$user->status==1 ? 'selected' : ' '}}>Active</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                    </div>

                    <br><br>
                    <div class="form-group">
                        <div class="col-lg-offset-2 col-lg-10">
                            <button class="btn btn-primary" type="submit">Save</button>
                        </div>
                    </div>
                    {!! Form::close() !!}
                </div>
            </div>
        </div>
    </div>
@endsection

@section('customJs')
    <script src="{{ asset('assets/backend/js/jquery-3.3.1.min.js') }}" type="text/javascript"></script>
    <script src="{{ asset('assets/backend/vendors/jasny-bootstrap/js/jasny-bootstrap.js') }}" type="text/javascript"></script>
    <script src="{{ asset('assets/backend/vendors/bootstrapvalidator/js/bootstrapValidator.min.js') }}" type="text/javascript" ></script>
    <script src="{{ asset('assets/backend/vendors/select2/js/select2.js') }}" type="text/javascript"></script>
    <script src="{{ asset('assets/backend/js/custom_js/addnew_user.js') }}" type="text/javascript"></script>

    <script>

        var $j = jQuery.noConflict();
        // $j is now an alias to the jQuery function; creating the new alias is optional.

        $j(document).ready(function () {
            $j('#jurisdiction_level').change(function() {
                $j('#jurisdiction_district').hide();
                $j('#jurisdiction_thana').hide();

                $j('.select-' + $j(this).val() + '-shown').show();
                $j('.select-' + $j(this).val() + '-hidden').hide();
            }).change();
        });

    </script>
@endsection