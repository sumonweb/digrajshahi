@extends('layouts.master')

@section('customCss')
    <!--page level css -->
    <link href="{{ asset('assets/backend/vendors/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css') }}" rel="stylesheet" type="text/css" />
    <link href="{{ asset('assets/backend/vendors/summernote/summernote.css') }}" rel="stylesheet" media="screen" type="text/css" >
    <link href="{{asset('assets/backend/css/icheck.css')}}" rel="stylesheet" type="text/css"/>
    <link href="{{ asset('assets/backend/vendors/jasny-bootstrap/css/jasny-bootstrap.css') }}" rel="stylesheet" />
    <link href="{{ asset('assets/backend/vendors/bootstrapvalidator/css/bootstrapValidator.min.css') }}" rel="stylesheet"/>
    <link href="{{ asset('assets/backend/vendors/select2/css/select2.min.css') }}" rel="stylesheet"/>
    <link href="{{ asset('assets/backend/vendors/select2/select2-bootstrap.css') }}" rel="stylesheet"/>
    <link href="{{asset('assets/backend/css/custom_css/addnew_user.css')}}" rel="stylesheet" type="text/css"/>
    <!--end of page level css-->
@endsection

@section('title')

    <section class="content-header">
        <div class="row">
            <div class="col-md-6">
                <h1>Edit contacts</h1>
            </div>
        </div>
        <ol class="breadcrumb">
            <li>
                <a href="{{ route('dashboard') }}">
                    <i class="fa fa-fw fa-home"></i>Dashboard
                </a>
            </li>
            <li>
                <a href="#">Edit contacts</a>
            </li>
        </ol>
    </section>

@endsection

@section('content')
    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="panel-body">
                    {!! Form::model($jurisdictioncontacts, ['method'=>'PUT', 'action'=> ['JurisdictionContactsController@update', $jurisdictioncontacts->id], 'class'=>'form-horizontal']) !!}
                    <div class="cd-block">
                        <div class="cd-content">
                            <div class="form-group">
                                <label class="col-lg-2 control-label">
                                    Officer's name
                                </label>
                                <div class="col-lg-6">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="fa fa-sun-o text-primary"></i>
                                        </span>
                                        <input type="text" placeholder="Officer's name" name="person_name" id="person-name" class="form-control" value="{{$jurisdictioncontacts->person_name}}">
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    @include('admin.includes.form-errors', ['field'=>'person_name'])
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="cd-block">
                        <div class="cd-content">
                            <div class="form-group">
                                <label class="col-lg-2 control-label">
                                    Designation
                                    <span class='require'>*</span>
                                </label>
                                <div class="col-lg-6">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="fa fa-graduation-cap text-primary"></i>
                                        </span>
                                        <input type="text" placeholder="Designation" name="designation" id="designation" class="form-control" value="{{$jurisdictioncontacts->designation}}">
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    @include('admin.includes.form-errors', ['field'=>'designation'])
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="cd-block">
                        <div class="cd-content">
                            <div class="form-group">
                                <label class="col-lg-2 control-label">
                                    Mobile
                                </label>
                                <div class="col-lg-6">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="fa fa-mobile text-primary"></i>
                                        </span>
                                        <input type="text" placeholder="Mobile number" name="mobile" id="mobile" class="form-control" value="{{ !empty($jurisdictioncontacts->mobile) ? $jurisdictioncontacts->mobile : '' }}">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="cd-block">
                        <div class="cd-content">
                            <div class="form-group">
                                <label class="col-lg-2 control-label">
                                    Telephone
                                </label>
                                <div class="col-lg-6">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="fa fa-phone text-primary"></i>
                                        </span>
                                        <input type="text" placeholder="Telephone number" name="phone" id="phone" class="form-control" value="{{ !empty($jurisdictioncontacts->phone) ? $jurisdictioncontacts->phone : '' }}">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="cd-block">
                        <div class="cd-content">
                            <div class="form-group">
                                <label class="col-lg-2 control-label">
                                    Fax
                                </label>
                                <div class="col-lg-6">
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <i class="fa fa-fax text-primary"></i>
                                        </span>
                                        <input type="text" placeholder="Fax number" name="fax" id="fax" class="form-control" value="{{ !empty($jurisdictioncontacts->fax) ? $jurisdictioncontacts->fax : '' }}">
                                    </div>
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
                                        <input type="email" placeholder="Email" name="email" id="email" class="form-control" value="{{ !empty($jurisdictioncontacts->email) ? $jurisdictioncontacts->email : '' }}">
                                    </div>
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

    <script src="{{ asset('assets/backend/js/jquery-3.3.1.min.js') }}" type="text/javascript"></script>
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
    <!-- end of page level js -->
@endsection