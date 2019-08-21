<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin panel | {{ $siteName }}</title>
    <link rel="shortcut icon" type="image/png" href="{{ 'assets/uploads/' . $favicon }}"/>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    <!-- global css -->
    <link href="{{asset('assets/backend/css/bootstrap.min.css')}}" rel="stylesheet" type="text/css"/>
    <link href="{{asset('assets/fonts/font-awesome-4.7.0/css/font-awesome.min.css')}}" rel="stylesheet" type="text/css">
    <link href="{{asset('assets/backend/css/custom_css/chandra.css')}}" rel="stylesheet" type="text/css"/>
    <link href="{{asset('assets/backend/css/custom_css/metisMenu.css')}}" rel="stylesheet" type="text/css"/>
    <link href="{{asset('assets/backend/css/custom_css/panel.css')}}" rel="stylesheet" type="text/css"/>
    <style type="text/css">
        .logo img{
            height: 40px; width: 40px; float: left; margin: 6px 10px 6px 0px;
        }
        .logo h2{
            font-size: 15px;font-family: Sans-Serif;line-height: 0px;float: left;color: #fff;font-weight: bold;
        }
        .logo p{
            float: left; font-size: 13px; font-family: helvetica;line-height: 16px;color: #fff;
        }
    </style>

    <!-- end of global css -->

    @yield('customCss')

</head>
<body class="skin-chandra">
    <!-- header logo: style can be found in header-->
    <header class="header">
        <nav class="navbar navbar-static-top" role="navigation">
            <a href="index.html" class="logo">
                <!-- Add the class icon to your logo image or logo icon to add the margining -->
                <img src="{{ asset('assets/uploads/' . $logo) }}" alt="logo"/>
                <h2>{{$siteName}}</h2>
                <p>{{$tagline}}</p>
            </a>
            <!-- Header Navbar: style can be found in header-->
            <!-- Sidebar toggle button-->
            <!-- Sidebar toggle button-->
            <div>
                <a href="#" class="navbar-btn sidebar-toggle" data-toggle="offcanvas" role="button"> <i class="fa fa-fw fa-hand-o-left"></i>
                </a>
            </div>

            <div class="navbar-right">
                <ul class="nav navbar-nav">
                    <!-- User Account: style can be found in dropdown-->
                    <li class="dropdown user user-menu">
                        <a href="#" class="dropdown-toggle padding-user" data-toggle="dropdown">
                            @if(Auth::user()->photo)
                            <img src="{{ asset('assets/uploads/users/' . Auth::user()->photo) }}" width="35" class="img-circle img-responsive pull-left" height="35" alt="User Image">
                            @else
                            <img src="{{ asset('assets/images/default-user.png') }}" width="35" class="img-circle img-responsive pull-left" height="35" alt="User Image">
                            @endif
                            <div class="riot">
                                <div>
                                    {{ Auth::user()->name }}
                                    <span>
                                        <i class="caret"></i>
                                    </span>
                                </div>
                            </div>
                        </a>
                        <ul class="dropdown-menu">
                            <!-- User image -->
                            <li class="user-header">
                                @if(Auth::user()->photo)
                                <img src="{{ asset('assets/uploads/users/' . Auth()->user()->photo) }}" class="img-circle" alt="User Image">
                                @else
                                <img src="{{ asset('assets/images/default-user.png') }}" class="img-circle" alt="User Image">
                                @endif
{{--                                <p>{{ Auth::user()->name }}</p>--}}
                            </li>
                            <!-- Menu Body -->
                            <li class="pad-3">
                                <a href="{{ route('users.edit', Auth::user()->id) }}">
                                    <i class="fa fa-fw fa-user"></i>
                                    My Profile
                                </a>
                            </li>
                            <li role="presentation"></li>
                            <li>
                                <a href="#">
                                    <i class="fa fa-fw fa-gear"></i>
                                    Account Settings
                                </a>
                            </li>
                            <li role="presentation" class="divider"></li>
                            <!-- Menu Footer-->
                            <li class="user-footer">
                                <div class="pull-left">
                                    {{--<a href="lockscreen.html">--}}
                                        {{--<i class="fa fa-fw fa-lock"></i>--}}
                                        {{--Lock--}}
                                    {{--</a>--}}
                                </div>
                                <div class="pull-right">
                                    <a href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();"><i class="fa fa-fw fa-sign-out"></i> Logout
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        {{ csrf_field() }}
                                    </form>
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
    </header>


    <div class="wrapper row-offcanvas row-offcanvas-left">
        <!-- Left side column. contains the logo and sidebar -->
        <aside class="left-side sidebar-offcanvas">
            <!-- sidebar: style can be found in sidebar-->
            <section class="sidebar">
                <div id="menu" role="navigation">
                    <div class="nav_profile">
                        {{--<div class="media profile-left">--}}
                            {{--<a class="pull-left profile-thumb" href="#">--}}
                                {{--<img src="img/authors/avatar1.jpg" class="img-circle" alt="User Image"></a>--}}
                            {{--<div class="content-profile">--}}
                                {{--<h4 class="media-heading">--}}
                                    {{--Nataliapery--}}
                                {{--</h4>--}}
                                {{--<ul class="icon-list">--}}
                                    {{--<li>--}}
                                        {{--<a href="users.html">--}}
                                            {{--<i class="fa fa-fw fa-user"></i>--}}
                                        {{--</a>--}}
                                    {{--</li>--}}
                                    {{--<li>--}}
                                        {{--<a href="lockscreen.html">--}}
                                            {{--<i class="fa fa-fw fa-lock"></i>--}}
                                        {{--</a>--}}
                                    {{--</li>--}}
                                    {{--<li>--}}
                                        {{--<a href="#">--}}
                                            {{--<i class="fa fa-fw fa-gear"></i>--}}
                                        {{--</a>--}}
                                    {{--</li>--}}
                                    {{--<li>--}}
                                        {{--<a href="login.html">--}}
                                            {{--<i class="fa fa-fw fa-sign-out"></i>--}}
                                        {{--</a>--}}
                                    {{--</li>--}}
                                {{--</ul>--}}
                            {{--</div>--}}
                        {{--</div>--}}
                    </div>
                    <ul class="navigation">
                        <li>
                            <a href="{{ route('dashboard') }}">
                                <i class="menu-icon fa fa-fw fa-home"></i>
                                <span class="mm-text ">Dashboard</span>
                            </a>
                        </li>
                        @if (Auth::user()->can('site-settings'))
                        <li>
                            <a href="/admin/settings/1/edit">
                                <i class="menu-icon fa fa-fw fa-gear"></i>
                                <span class="mm-text ">Site Settings</span>
                            </a>
                        </li>
                        @endif
                        @if (Auth::user()->can('district'))
                            <li class="menu-dropdown">
                                <a href="">
                                    <i class="menu-icon fa fa-adjust"></i>
                                    <span>Districts</span>
                                    <span class="fa arrow"></span>
                                </a>
                                <ul class="sub-menu">
                                    <li>
                                        <a href="{{ route('district.create') }}">
                                            <i class="fa fa-plus-circle"></i>
                                            Create district
                                        </a>
                                    </li>

                                    <li>
                                        <a href="{{route('district.index')}}">
                                            <i class="fa fa-globe"></i>
                                            Districts list
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        @endif
                        @if (Auth::user()->can('thana'))
                            <li class="menu-dropdown">
                                <a href="">
                                    <i class="menu-icon fa fa-window-maximize"></i>
                                    <span>Thana</span>
                                    <span class="fa arrow"></span>
                                </a>
                                <ul class="sub-menu">
	                                <li>
		                                <a href="{{ route('thana.create') }}">
			                                <i class="fa fa-plus-circle"></i>
			                                Create thana
		                                </a>
	                                </li>

	                                <li>
		                                <a href="{{route('thana.index')}}">
			                                <i class="fa fa-globe"></i>
			                                Thana list
		                                </a>
	                                </li>
                                </ul>
                            </li>
                        @endif
                        @if(Auth::user()->can('slider'))
                        <li class="menu-dropdown">
                            <a href="">
                                <i class="menu-icon fa fa-sliders"></i>
                                <span>Image Slider</span>
                                <span class="fa arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                @if(Auth::user()->can('create-slider'))
                                <li>
                                    <a href="{{ route('slider.create') }}">
                                        <i class="fa fa-plus-circle"></i>
                                        Create Slider
                                    </a>
                                </li>
                                @endif
                                @if(Auth::user()->can('slider-list'))
                                <li>
                                    <a href="{{route('slider.index')}}">
                                        <i class="fa fa-globe"></i>
                                        All Sliders
                                    </a>
                                </li>
                                @endif
                            </ul>
                        </li>
                        @endif
                        @if(Auth::user()->can('users'))
                        <li class="menu-dropdown">
                            <a href="">
                                <i class="menu-icon fa fa-users"></i>
                                <span>Users</span>
                                <span class="fa arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                @if(Auth::user()->can('create-user'))
                                <li>
                                    <a href="{{ route('users.create') }}">
                                        <i class="fa fa-user"></i>
                                        Create user
                                    </a>
                                </li>
                                @endif
                                @if(Auth::user()->can('users-list'))
                                <li>
                                    <a href="{{ route('users.index') }}">
                                        <i class="fa fa-list"></i>
                                        All users
                                    </a>
                                </li>
                                @endif
                            </ul>
                        </li>
                        @endif
                        @if(Auth::user()->can('role'))
                        <li class="menu-dropdown">
                            <a href="">
                                <i class="menu-icon fa fa-lock"></i>
                                <span>Role</span>
                                <span class="fa arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                @if(Auth::user()->can('create-role'))
                                <li>
                                    <a href="{{ route('roles.create') }}">
                                        <i class="fa fa-plus"></i>
                                        Create role
                                    </a>
                                </li>
                                @endif
                                @if(Auth::user()->can('role-list'))
                                <li>
                                    <a href="{{ route('roles.index') }}">
                                        <i class="fa fa-list"></i>
                                        Roles list
                                    </a>
                                </li>
                                @endif
                            </ul>
                        </li>
                        @endif
                        <li class="menu-dropdown">
                            <a href="{{ route('permissions.index') }}">
                                <i class="menu-icon fa fa-newspaper-o"></i>
                                <span>Permission</span>
                                <span class="fa arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="{{ route('permissions.create') }}">
                                        <i class="fa fa-plus"></i>
                                        Create permission
                                    </a>
                                </li>
                                <li>
                                    <a href="{{ route('permissions.index') }}">
                                        <i class="fa fa-list"></i>
                                        Permission list
                                    </a>
                                </li>
                            </ul>
                        </li>
                        @if(Auth::user()->can('news-category'))
                        <li>
                            <a href="{{ route('categories.index') }}">
                                <i class="menu-icon fa fa-file-text"></i>
                                <span class="mm-text ">News Category</span>
                            </a>
                        </li>
                        @endif
                        @if(Auth::user()->can('news'))
                        <li class="menu-dropdown">
                            <a href="">
                                <i class="menu-icon fa fa-newspaper-o"></i>
                                <span>News</span>
                                <span class="fa arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                @if(Auth::user()->can('create-news'))
                                <li>
                                    <a href="{{ route('news.create') }}">
                                        <i class="fa fa-plus"></i>
                                        Create news
                                    </a>
                                </li>
                                @endif
                                @if(Auth::user()->can('news-list'))
                                <li>
                                    <a href="{{ route('news.index') }}">
                                        <i class="fa fa-list"></i>
                                        All news
                                    </a>
                                </li>
                                @endif
                                @if(Auth::user()->can('unpublished-news'))
                                    <li>
                                        <a href="{{ route('all-unpublished-news') }}">
                                            <i class="fa fa-list"></i>
                                                Unpublished news
                                        </a>
                                    </li>
                                @endif
                                @if(Auth::user()->can('published-news'))
                                    <li>
                                        <a href="{{ route('all-published-news') }}">
                                            <i class="fa fa-list"></i>
                                                Published news
                                        </a>
                                    </li>
                                @endif
                            </ul>
                        </li>
                        @endif
                        <li class="menu-dropdown">
                            <a href="#">
                                <i class="menu-icon fa fa-user-o"></i>
                                <span>DIG</span>
                                <span class="fa arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                @if(Auth::user()->can('add-dig'))
                                <li>
                                    <a href="{{ route('dig.create') }}">
                                        <i class="fa fa-male"></i>
                                        New DIG
                                    </a>
                                </li>
                                @endif
                                <li>
                                    <a href="{{ route('dig.index') }}">
                                        <i class="fa fa-eye"></i>
                                        Former DIG List
                                    </a>
                                </li>
                            </ul>
                        </li>
                        @if(Auth::user()->can('tender'))
                        <li class="menu-dropdown">
                            <a href="#">
                                <i class="menu-icon fa fa-mars-stroke-v"></i>
                                <span>Tender</span>
                                <span class="fa arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                @if(Auth::user()->can('create-tender'))
                                    <li>
                                        <a href="{{ route('tender.create') }}">
                                            <i class="fa fa-plus"></i>
                                            Create tender
                                        </a>
                                    </li>
                                @endif
                                @if(Auth::user()->can('tender-list'))
                                <li>
                                    <a href="{{ route('tender.index') }}">
                                        <i class="fa fa-list"></i>
                                        Tenders list
                                    </a>
                                </li>
                                @endif
                            </ul>
                        </li>
                        @endif
                        @if(Auth::user()->can('notice'))
                        <li class="menu-dropdown">
                            <a href="#">
                                <i class="menu-icon fa fa-sticky-note"></i>
                                <span>Notice</span>
                                <span class="fa arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                @if(Auth::user()->can('create-notice'))
                                    <li>
                                        <a href="{{ route('notice.create') }}">
                                            <i class="fa fa-plus"></i>
                                            Create notice
                                        </a>
                                    </li>
                                @endif
                                @if(Auth::user()->can('notice-list'))
                                    <li>
                                        <a href="{{ route('notice.index') }}">
                                            <i class="fa fa-list"></i>
                                            Notice list
                                        </a>
                                    </li>
                                @endif
                            </ul>
                        </li>
                        @endif
                        @if(Auth::user()->can('noc'))
                            <li class="menu-dropdown">
                                <a href="#">
                                    <i class="menu-icon fa fa-object-ungroup"></i>
                                    <span>NOC</span>
                                    <span class="fa arrow"></span>
                                </a>
                                <ul class="sub-menu">
                                    @if(Auth::user()->can('create-noc'))
                                        <li>
                                            <a href="{{ route('noc.create') }}">
                                                <i class="fa fa-plus"></i>
                                                Create NOC
                                            </a>
                                        </li>
                                    @endif
                                    @if(Auth::user()->can('noc-list'))
                                        <li>
                                            <a href="{{ route('noc.index') }}">
                                                <i class="fa fa-list"></i>
                                                NOC list
                                            </a>
                                        </li>
                                    @endif
                                </ul>
                            </li>
                        @endif
                        @if(Auth::user()->can('service'))
                            <li class="menu-dropdown">
                                <a href="#">
                                    <i class="menu-icon fa fa-handshake-o"></i>
                                    <span>Service</span>
                                    <span class="fa arrow"></span>
                                </a>
                                <ul class="sub-menu">
{{--                                    @if(Auth::user()->can('create-noc'))--}}
                                        <li>
                                            <a href="{{ route('services.create') }}">
                                                <i class="fa fa-plus"></i>
                                                Create services
                                            </a>
                                        </li>
                                    {{--@endif--}}
                                    {{--@if(Auth::user()->can('noc-list'))--}}
                                        <li>
                                            <a href="{{ route('services.index') }}">
                                                <i class="fa fa-list"></i>
                                                Services list
                                            </a>
                                        </li>
                                    {{--@endif--}}
                                </ul>
                            </li>
                        @endif

                        <li class="menu-dropdown">
                            <a href="#">
                                <i class="menu-icon fa fa-address-card"></i>
                                <span>Staff</span>
                                <span class="fa arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                @if(Auth::user()->can('create-staff'))
                                <li>
                                    <a href="{{ route('staff.create') }}">
                                        <i class="fa fa-address-card"></i>
                                        Create staff
                                    </a>
                                </li>
                                @endif
                                {{--@if(Auth::user()->can('noc-list'))--}}
                                <li>
                                    <a href="{{ route('staff.index') }}">
                                        <i class="fa fa-address-book"></i>
                                        Staff list
                                    </a>
                                </li>
                                {{--@endif--}}
                            </ul>
                        </li>
                        @if(Auth::user()->can('gallery'))
                            <li class="menu-dropdown">
                                <a href="#">
                                    <i class="menu-icon fa fa-picture-o"></i>
                                    <span>Gallery</span>
                                    <span class="fa arrow"></span>
                                </a>
                                <ul class="sub-menu">
                                    @if(Auth::user()->can('create-gallery'))
                                    <li>
                                        <a href="{{ route('gallery.create') }}">
                                            <i class="fa fa-camera"></i>
                                            Create gallery
                                        </a>
                                    </li>
                                    @endif
                                    @if(Auth::user()->can('gallery-list'))
                                    <li>
                                        <a href="{{ route('gallery.index') }}">
                                            <i class="fa fa-file-image-o"></i>
                                            Galleries
                                        </a>
                                    </li>
                                    @endif
                                </ul>
                            </li>
                        @endif
                        @if(Auth::user()->can('sp'))
                            <li class="menu-dropdown">
                                <a href="#">
                                    <i class="menu-icon fa fa-user-circle-o"></i>
                                    <span>SP</span>
                                    <span class="fa arrow"></span>
                                </a>
                                <ul class="sub-menu">
                                    @if(Auth::user()->can('create-sp'))
                                        <li>
                                            <a href="{{ route('sp.create') }}">
                                                <i class="fa fa-male"></i>
                                                New SP
                                            </a>
                                        </li>
                                    @endif
                                    @if(Auth::user()->can('sp-list'))
                                        <li>
                                            <a href="{{ route('sp.index') }}">
                                                <i class="fa fa-eye"></i>
                                                SP list
                                            </a>
                                        </li>
                                    @endif
                                </ul>
                            </li>
                        @endif
                        @if(Auth::user()->can('received-messages'))
                            <li class="menu-dropdown">
                                <a href="#">
                                    <i class="menu-icon fa fa-telegram"></i>
                                    <span>Received messages</span>
                                    <span class="fa arrow"></span>
                                </a>
                                <ul class="sub-menu">
                                    <li>
                                        <a href="{{ route('contacts.index') }}">
                                            <i class="fa fa-circle-o-notch"></i>
                                            Messages received
                                        </a>
                                    </li>
                                    <li>
                                        <a href="{{ route('admin-complaint') }}">
                                            <i class="fa fa-circle-o-notch"></i>
                                            Complaints received
                                        </a>
                                    </li>
                                    <li>
                                        <a href="{{ route('information') }}">
                                            <i class="fa fa-circle-o-notch"></i>
                                            Information received
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        @endif
                        @if(Auth::user()->can('jurisdiction-contacts'))
                            <li class="menu-dropdown">
                                <a href="#">
                                    <i class="menu-icon fa fa-address-book"></i>
                                    <span>Jurisdiction contacts</span>
                                    <span class="fa arrow"></span>
                                </a>
                                <ul class="sub-menu">
                                    <li>
                                        <a href="{{ route('jurisdictionContacts.create') }}">
                                            <i class="fa fa-circle-o-notch"></i>
                                            Create contacts
                                        </a>
                                    </li>
                                    <li>
                                        <a href="{{ route('jurisdictionContacts.index') }}">
                                            <i class="fa fa-circle-o-notch"></i>
                                            All contacts
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        @endif
                        @if(Auth::user()->can('most-wanted'))
                            <li class="menu-dropdown">
                                <a href="#">
                                    <i class="menu-icon fa fa-user-secret"></i>
                                    <span>Most wanted</span>
                                    <span class="fa arrow"></span>
                                </a>
                                <ul class="sub-menu">
                                    <li>
                                        <a href="{{ route('mostWanted.create') }}">
                                            <i class="fa fa-circle-o-notch"></i>
                                            Create one
                                        </a>
                                    </li>
                                    <li>
                                        <a href="{{ route('mostWanted.index') }}">
                                            <i class="fa fa-circle-o-notch"></i>
                                            Most wanted list
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        @endif
                        @if(Auth::user()->can('download-corner'))
                            <li class="menu-dropdown">
                                <a href="#">
                                    <i class="menu-icon fa fa-download"></i>
                                    <span>Download corner</span>
                                    <span class="fa arrow"></span>
                                </a>
                                <ul class="sub-menu">
                                    <li>
                                        <a href="{{ route('downloadable.create') }}">
                                            <i class="fa fa-circle-o-notch"></i>
                                            Create one
                                        </a>
                                    </li>
                                    <li>
                                        <a href="{{ route('downloadable.index') }}">
                                            <i class="fa fa-circle-o-notch"></i>
                                            Downloadable items
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        @endif
                        @if(Auth::user()->can('useful-links'))
                            <li class="menu-dropdown">
                                <a href="#">
                                    <i class="menu-icon fa fa-link"></i>
                                    <span>Useful links</span>
                                    <span class="fa arrow"></span>
                                </a>
                                <ul class="sub-menu">
                                    <li>
                                        <a href="{{ route('links.create') }}">
                                            <i class="fa fa-circle-o-notch"></i>
                                            Create link
                                        </a>
                                    </li>
                                    <li>
                                        <a href="{{ route('links.index') }}">
                                            <i class="fa fa-circle-o-notch"></i>
                                            All links
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        @endif
                        {{--@if(Auth::user()->can('crime-statistics'))--}}
                            {{--<li class="menu-dropdown">--}}
                                {{--<a href="#">--}}
                                    {{--<i class="menu-icon fa fa-universal-access"></i>--}}
                                    {{--<span>Crime statistics</span>--}}
                                    {{--<span class="fa arrow"></span>--}}
                                {{--</a>--}}
                                {{--<ul class="sub-menu">--}}
                                    {{--<li>--}}
                                        {{--<a href="{{ route('crime-statistics.create') }}">--}}
                                            {{--<i class="fa fa-circle-o-notch"></i>--}}
                                            {{--Create statistics--}}
                                        {{--</a>--}}
                                    {{--</li>--}}
                                    {{--<li>--}}
                                        {{--<a href="{{ route('crime-statistics.index') }}">--}}
                                            {{--<i class="fa fa-circle-o-notch"></i>--}}
                                            {{--Statistics Details--}}
                                        {{--</a>--}}
                                    {{--</li>--}}
                                {{--</ul>--}}
                            {{--</li>--}}
                        {{--@endif--}}
                    </ul>
                    <!-- / .navigation --> </div>
                <!-- menu --> </section>
            <!-- /.sidebar --> </aside>
        <aside class="right-side right-padding">
            @yield('title')
            @yield('content')


            <!-- /.content --> </aside>
        <!-- /.right-side --> </div>
    <!-- /.right-side -->
    <!-- ./wrapper -->

    <!-- global js -->
    <script src="{{asset('assets/backend/js/jquery-1.11.1.min.js')}}" type="text/javascript"></script>
    <script src="{{asset('assets/backend/js/bootstrap.min.js')}}" type="text/javascript"></script>
    <script src="{{asset('assets/backend/js/custom_js/app.js')}}" type="text/javascript"></script>
    <script src="{{asset('assets/backend/js/custom_js/metisMenu.js')}}" type="text/javascript"></script>
    <!-- end of page level js -->

    @yield('customJs')


</body>
</html>

