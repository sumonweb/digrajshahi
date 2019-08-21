<footer class=""> <!-- Footer -->
    <section class="top-footer bg-dark py-4">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 mt-3 mb-3">
                    <h3 class="text-white">Important Links</h3>
                </div>
                <div class="col-sm-12">
                    <div class="link-carousel owl-carousel owl-theme">
                        @foreach($links as $link)
                            <div class="item">
                                <a class="useful-logo-box" href="{{ $link->link }}" target="_blank">
                                    @if(!empty($link->logo))
                                        <img src="{{ asset('assets/uploads/links/'.$link->logo) }}" alt="Bangladesh Logo">
                                    @else
                                        <p style="font-size: 30px">{!! $link->icon !!}</p>
                                    @endif
                                </a>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        <!-- <div class="row">
                @foreach($links as $link)
            <div class="col-md-2 col-sm-3 col-4 small-pad">
				<a class="useful-logo-box" href="{{ $link->link }}" target="_blank">
                        @if(!empty($link->logo))
                <img src="{{ asset('assets/uploads/links/'.$link->logo) }}" alt="Bangladesh Logo">
                        @else
                <p style="font-size: 30px">{!! $link->icon !!}</p>
                        @endif
                    </a>
                </div>
				@endforeach
                </div>  -->
            <div class="row">
                <div class="col-md-12">
                    <nav class="footer-menu">
                        <ul class="nav">
                            <li class="nav-item">
                                <a class="nav-link active" href="{{ route('information-help') }}"><i class="fa fa-hand-o-right" aria-hidden="true"></i> তথ্য দিয়ে সহযোগিতা করুন</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('complaint') }}"><i class="fa fa-hand-o-right" aria-hidden="true"></i> অনলাইনে অভিযোগ দিতে পারেন</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="http://pcc.police.gov.bd/apex/f?p=500"><i class="fa fa-hand-o-right" aria-hidden="true"></i> পুলিশ ক্লিয়ারেন্স সার্টিফিকেট</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('contact-us') }}"><i class="fa fa-hand-o-right" aria-hidden="true"></i> যোগাযোগ </a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </section>
    <section class="bottom-footer bg-light py-3">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <p class="text-white copyright-text">Copyright 2019 &copy; DIG Rajshahi Range</p>
                </div>
                <div class="col-sm-6">
                    <p class="text-white developed-text">Developed by <a style="color:#131B44;" href="http://desktopit.com.bd" target="_blank">Desktop it.</a></p>
                </div>
            </div>
        </div>  <!-- End Container -->
    </section>
</footer> <!-- End Footer -->

<!-- Essential jQuery Library -->

<script src="{{ asset('assets/js/jquery.slim.min.js') }}" ></script>
<script src="{{ asset('assets/js/jquery.min.js') }}"></script>
<!-- Popper js -->
<script src="{{ asset('assets/js/popper.min.js') }}"></script>
<!-- Bootstrap-4 js -->
<script src="{{ asset('assets/js/bootstrap.min.js') }}"></script>
<!-- All Plugins JS -->
<script src="{{ asset('assets/js/plugins.js') }}"></script>
<!-- Active JS -->
<script src="{{ asset('assets/js/active.js') }}"></script>
<!-- TableSaw  Js-->
<script src="{{ asset('assets/js/tablesaw.js') }}"></script>
<script src="{{ asset('assets/js/tablesaw-init.js') }}"></script>

<!-- End Essential jQuery Library -->

</body>
</html>
