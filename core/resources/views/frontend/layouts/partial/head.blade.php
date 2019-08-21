<!DOCTYPE HTML>
<html>
<head>

  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>{{ $siteName }}</title>
  <link rel="shortcut icon" type="image/png" href="{{ 'assets/uploads/' . $favicon }}"/>
  <!-- Bootstrap core CSS -->
  <link href="{{ asset('assets/css/bootstrap.min.css') }}" rel="stylesheet" type="text/css">
  <!-- Owl Carousel core CSS -->
  <link href="{{ asset('assets/css/owl.carousel.min.css') }}" rel="stylesheet"  type="text/css"> 
  <!-- TableSaw  CSS-->
  <link href="{{ asset('assets/css/tablesaw.css') }}" rel="stylesheet" type="text/css"> 
  <!-- Custom CSS -->
  <link href="{{ asset('assets/css/style.css') }}" rel="stylesheet"  type="text/css">  
  <!-- Font Awesome CSS -->
  <link href="{{ asset('assets/fonts/font-awesome-4.7.0/css/font-awesome.min.css') }}" rel="stylesheet">
  <!-- Responsive CSS -->
  <link href="{{ asset('assets/css/responsive.css') }}" rel="stylesheet"  type="text/css">

    <style type="text/css">
        .footer-menu{
            margin-bottom: 30px;
        }
        .footer-menu ul li a{
            color: #fff;
            font-family: apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol";
          font-size: 14px;
        }
        .footer-menu ul li a:hover{
            color: #0275d8;
        }

        .help-block{
            font-size: 13px;
            color: #ff0000;
        }
    </style>

</head>

<body>
  <div class="container-fluid top_bar"> <!-- Top Bar -->
  	<div class="row">
      <div class="col-lg-12 col-md-12">
        <div class="fa-pull-right pa">
          <ul class="social-menu">
            <a href="tel:{{ $phone }}" class="fa fa-phone-square"  title="{{ $phone }}"> {{ $phone }}</a>
            {{--<a href="news/" class="fa fa-newspaper-o" title="DIG News Portal"></a>--}}
          	<a href="{{ $fb_page_link }}" class="fa fa-facebook" title="DIG FB Page"></a>
            <!-- <a href="#" class="fa fa-google"></a> -->
            <!-- <a href="#" class="fa fa-skype"></a> -->
            <!-- <a href="#" class="fa fa-yahoo"></a> -->
            <!-- <a href="#" class="fa fa-twitter"></a> -->
            <!-- <a href="#" class="fa fa-pinterest"></a> -->
            <!-- <a href="#" class="fa fa-snapchat-ghost"></a> -->
          </ul>
        </div>
      </div>
    </div>  <!-- End Row -->
  </div> <!-- End Top Bar -->

  <div class="logo-search"> <!-- Logo & Search -->
  	<div class="row">
      <div class="col-lg-5 col-md-6 col-sm-9 col-9">
        <div class="logo-wrap">
          <div class="logo_div"> 
            <img src="{{ asset('assets/uploads/' . $logo) }}" class="rr-logo">
          </div>
          <p class="bp_text">{{ $siteName }}<br> <span class="r_text">{{ $tagline }}</span></p>
        </div>
      </div>

      <div class="d-lg-none col-md-6 col-sm-3 col-3">
        <div class="range-logo">
          <img src="{{ asset('assets/images/rajshahi-range.png') }}" class="pull-right">
        </div>
      </div>
      
      <div class="col-lg-5 col-sm-12 reponsive-col">
      	<ul id="menu-header-menu" class="nav additional-menu rad">
          <li class="ser_form">
            <form class="form-inline my-2 ">
              <input class="form-control media_form " placeholder="Search" aria-label="Search"  type="search">
              <button class="btn btn-outline-succes my-2 my-sm-0 media_btn" type="submit">
                <i class="fa fa-search"></i>
              </button>
            </form>
      		</li> 
          <li id="" class="contact">
            <a href="{{ route('contact-us') }}" class="contact_us">Contact Us<i class="fa fa-volume-control-phone hide" aria-hidden="true"></i></a>
          </li>
  		  </ul>
      </div>
      <div class="col-lg-2 d-none d-lg-block">
        <div class="range-logo">
          <img src="{{ asset('assets/images/rajshahi-range.png') }}" class="pull-right">
        </div>
      </div>
    </div>  <!-- End Row -->
  </div>  <!-- End Logo & Search -->