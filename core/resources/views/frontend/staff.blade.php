
@include('frontend.layouts.partial.head')
@include('frontend.layouts.partial.header')

<div class="container">
    <div class="row">
        <div class="col-lg-3">
            @include('frontend.layouts.partial.sidebar')
        </div>
        <!-- /.col-lg-3 -->

        <div class="col-lg-9">
            <div class="section formar-dig text-center"> <!-- Staff List Section -->
                <h4 class="titlebar services">Officers List</h4>

                <div class="team">
                    <div class="row">

                        @if($dig_staff)
                            @foreach($dig_staff as $dig)

                                <div class="col-md-4" style="height: 380px;">
                                    <div class="team-player">
                                        <img src="{{ asset('assets/uploads/staff/'.$dig->photo) }}" alt="Thumbnail Image" class="img-raised img-circle">
                                        <h4 class="title">
                                            <span class="staff_name">{{ $dig->staff_name }} {{ !empty($dig->surname) ? '- '.$dig->surname : '' }}</span><br>

                                            <span class="staff_bp">BP: {{ $dig->bp_no }}</span><br>
                                            <span class="staff_dgn">{{ $dig->designation }} </span><br>
                                            <span class="staff_mob">Mobile: {{ $dig->mobile }}</span><br>
                                            @if(!empty($dig->phone))
                                                <span class="staff_sec">{{ $dig->phone }}</span><br>
                                            @endif
                                            @if(!empty($dig->email))
                                                <span class="staff_email">{{ $dig->email }}</span>
                                            @endif
                                        </h4>
                                    </div>
                                </div>  <!-- End Single Staff -->

                            @endforeach
                        @endif

                        @if($addl_dig)
                                @foreach($addl_dig as $add_dig)

                                    <div class="col-md-4" style="height: 380px;">
                                        <div class="team-player">
                                            <img src="{{ asset('assets/uploads/staff/'.$add_dig->photo) }}" alt="Thumbnail Image" class="img-raised img-circle">
                                            <h4 class="title">
                                                <span class="staff_name">{{ $add_dig->staff_name }} {{ !empty($add_dig->surname) ? '- '.$add_dig->surname : '' }}</span><br>

                                                <span class="staff_bp">BP: {{ $add_dig->bp_no }}</span><br>
                                                <span class="staff_dgn">{{ $add_dig->designation }} {{ !empty($add_dig->department) ? '('.$add_dig->department.')' : '' }}</span><br>
                                                <span class="staff_mob">Mobile: {{ $add_dig->mobile }}</span><br>
                                                @if(!empty($add_dig->phone))
                                                    <span class="staff_sec">{{ $add_dig->phone }}</span><br>
                                                @endif
                                                @if(!empty($add_dig->email))
                                                    <span class="staff_email">{{ $add_dig->email }}</span>
                                                @endif
                                            </h4>
                                        </div>
                                    </div>  <!-- End Single Staff -->

                                @endforeach
                            @endif

                            @if($sop)
                                @foreach($sop as $sp)

                                    <div class="col-md-4" style="height: 380px;">
                                        <div class="team-player">
                                            <img src="{{ asset('assets/uploads/staff/'.$sp->photo) }}" alt="Thumbnail Image" class="img-raised img-circle">
                                            <h4 class="title">
                                                <span class="staff_name">{{ $sp->staff_name }} {{ !empty($sp->surname) ? '- '.$sp->surname : '' }}</span><br>

                                                <span class="staff_bp">BP: {{ $sp->bp_no }}</span><br>
                                                <span class="staff_dgn">{{ $sp->designation }} {{ !empty($sp->department) ? '('.$sp->department.')' : '' }}</span><br>
                                                <span class="staff_mob">Mobile: {{ $sp->mobile }}</span><br>
                                                @if(!empty($sp->phone))
                                                    <span class="staff_sec">{{ $sp->phone }}</span><br>
                                                @endif
                                                @if(!empty($sp->email))
                                                    <span class="staff_email">{{ $sp->email }}</span>
                                                @endif
                                            </h4>
                                        </div>
                                    </div>  <!-- End Single Staff -->

                                @endforeach
                            @endif

                            @if($addl_sop)
                                @foreach($addl_sop as $addl_sp)

                                    <div class="col-md-4" style="height: 380px;">
                                        <div class="team-player">
                                            <img src="{{ asset('assets/uploads/staff/'.$addl_sp->photo) }}" alt="Thumbnail Image" class="img-raised img-circle">
                                            <h4 class="title">
                                                <span class="staff_name">{{ $addl_sp->staff_name }} {{ !empty($addl_sp->surname) ? '- '.$addl_sp->surname : '' }}</span><br>

                                                <span class="staff_bp">BP: {{ $addl_sp->bp_no }}</span><br>
                                                <span class="staff_dgn">{{ $addl_sp->designation }} {{ !empty($addl_sp->department) ? '('.$addl_sp->department.')' : '' }}</span><br>
                                                <span class="staff_mob">Mobile: {{ $addl_sp->mobile }}</span><br>
                                                @if(!empty($addl_sp->phone))
                                                    <span class="staff_sec">{{ $addl_sp->phone }}</span><br>
                                                @endif
                                                @if(!empty($addl_sp->email))
                                                    <span class="staff_email">{{ $addl_sp->email }}</span>
                                                @endif
                                            </h4>
                                        </div>
                                    </div>  <!-- End Single Staff -->

                                @endforeach
                            @endif

                            @if($assistant_sp)
                                @foreach($assistant_sp as $asp)

                                    <div class="col-md-4" style="height: 380px;">
                                        <div class="team-player">
                                            <img src="{{ asset('assets/uploads/staff/'.$asp->photo) }}" alt="Thumbnail Image" class="img-raised img-circle">
                                            <h4 class="title">
                                                <span class="staff_name">{{ $asp->staff_name }} {{ !empty($asp->surname) ? '- '.$asp->surname : '' }}</span><br>

                                                <span class="staff_bp">BP: {{ $asp->bp_no }}</span><br>
                                                <span class="staff_dgn">{{ $asp->designation }} {{ !empty($asp->department) ? '('.$asp->department.')' : '' }}</span><br>
                                                <span class="staff_mob">Mobile: {{ $asp->mobile }}</span><br>
                                                @if(!empty($asp->phone))
                                                    <span class="staff_sec">{{ $asp->phone }}</span><br>
                                                @endif
                                                @if(!empty($asp->email))
                                                    <span class="staff_email">{{ $asp->email }}</span>
                                                @endif
                                            </h4>
                                        </div>
                                    </div>  <!-- End Single Staff -->

                                @endforeach
                            @endif

                            @if($inspector)
                                @foreach($inspector as $inspect)

                                    <div class="col-md-4" style="height: 380px;">
                                        <div class="team-player">
                                            <img src="{{ asset('assets/uploads/staff/'.$inspect->photo) }}" alt="Thumbnail Image" class="img-raised img-circle">
                                            <h4 class="title">
                                                <span class="staff_name">{{ $inspect->staff_name }} {{ !empty($inspect->surname) ? '- '.$inspect->surname : '' }}</span><br>

                                                <span class="staff_bp">BP: {{ $inspect->bp_no }}</span><br>
                                                <span class="staff_dgn">{{ $inspect->designation }} {{ !empty($inspect->department) ? '('.$inspect->department.')' : '' }}</span><br>
                                                <span class="staff_mob">Mobile: {{ $inspect->mobile }}</span><br>
                                                @if(!empty($inspect->phone))
                                                    <span class="staff_sec">{{ $inspect->phone }}</span><br>
                                                @endif
                                                @if(!empty($inspect->email))
                                                    <span class="staff_email">{{ $inspect->email }}</span>
                                                @endif
                                            </h4>
                                        </div>
                                    </div>  <!-- End Single Staff -->

                                @endforeach
                            @endif

                            @if($sub_inspector)
                                @foreach($sub_inspector as $si)

                                    <div class="col-md-4" style="height: 380px;">
                                        <div class="team-player">
                                            <img src="{{ asset('assets/uploads/staff/'.$si->photo) }}" alt="Thumbnail Image" class="img-raised img-circle">
                                            <h4 class="title">
                                                <span class="staff_name">{{ $si->staff_name }} {{ !empty($si->surname) ? '- '.$si->surname : '' }}</span><br>

                                                <span class="staff_bp">BP: {{ $si->bp_no }}</span><br>
                                                <span class="staff_dgn">{{ $si->designation }} {{ !empty($si->department) ? '('.$si->department.')' : '' }}</span><br>
                                                <span class="staff_mob">Mobile: {{ $si->mobile }}</span><br>
                                                @if(!empty($si->phone))
                                                    <span class="staff_sec">{{ $si->phone }}</span><br>
                                                @endif
                                                @if(!empty($si->email))
                                                    <span class="staff_email">{{ $si->email }}</span>
                                                @endif
                                            </h4>
                                        </div>
                                    </div>  <!-- End Single Staff -->

                                @endforeach
                            @endif

                            @if($assistant_sub_inspector)
                                @foreach($assistant_sub_inspector as $asi)

                                    <div class="col-md-4" style="height: 380px;">
                                        <div class="team-player">
                                            <img src="{{ asset('assets/uploads/staff/'.$asi->photo) }}" alt="Thumbnail Image" class="img-raised img-circle">
                                            <h4 class="title">
                                                <span class="staff_name">{{ $asi->staff_name }} {{ !empty($asi->surname) ? '- '.$asi->surname : '' }}</span><br>

                                                <span class="staff_bp">BP: {{ $asi->bp_no }}</span><br>
                                                <span class="staff_dgn">{{ $asi->designation }} {{ !empty($asi->department) ? '('.$asi->department.')' : '' }}</span><br>
                                                <span class="staff_mob">Mobile: {{ $asi->mobile }}</span><br>
                                                @if(!empty($asi->phone))
                                                    <span class="staff_sec">{{ $asi->phone }}</span><br>
                                                @endif
                                                @if(!empty($asi->email))
                                                    <span class="staff_email">{{ $asi->email }}</span>
                                                @endif
                                            </h4>
                                        </div>
                                    </div>  <!-- End Single Staff -->

                                @endforeach
                            @endif

                            @if($constable)
                                @foreach($constable as $const)

                                    <div class="col-md-4" style="height: 380px;">
                                        <div class="team-player">
                                            <img src="{{ asset('assets/uploads/staff/'.$const->photo) }}" alt="Thumbnail Image" class="img-raised img-circle">
                                            <h4 class="title">
                                                <span class="staff_name">{{ $const->staff_name }} {{ !empty($const->surname) ? '- '.$const->surname : '' }}</span><br>

                                                <span class="staff_bp">BP: {{ $const->bp_no }}</span><br>
                                                <span class="staff_dgn">{{ $const->designation }} {{ !empty($const->department) ? '('.$const->department.')' : '' }}</span><br>
                                                <span class="staff_mob">Mobile: {{ $const->mobile }}</span><br>
                                                @if(!empty($const->phone))
                                                    <span class="staff_sec">{{ $const->phone }}</span><br>
                                                @endif
                                                @if(!empty($const->email))
                                                    <span class="staff_email">{{ $const->email }}</span>
                                                @endif
                                            </h4>
                                        </div>
                                    </div>  <!-- End Single Staff -->

                                @endforeach
                            @endif

                    </div>  <!-- End Row -->
                </div>
            </div>  <!-- End Staff List Section -->

            {{--<div class="paggination" style="margin-bottom:20px;"> <!-- Paggination -->--}}
            {{--<nav aria-label="...">--}}
            {{--<ul class="pagination">--}}
            {{--<li class="page-item disabled">--}}
            {{--<a class="page-link" href="#" tabindex="-1">Previous</a>--}}
            {{--</li>--}}
            {{--<li class="page-item">--}}
            {{--<a class="page-link" href="#">1</a>--}}
            {{--</li>--}}
            {{--<li class="page-item active">--}}
            {{--<a class="page-link" href="#">2 <span class="sr-only">(current)</span></a>--}}
            {{--</li>--}}
            {{--<li class="page-item">--}}
            {{--<a class="page-link" href="#">3</a>--}}
            {{--</li>--}}
            {{--<li class="page-item">--}}
            {{--<a class="page-link" href="#">Next</a>--}}
            {{--</li>--}}
            {{--</ul>--}}
            {{--</nav>--}}
            {{--</div>  <!-- End Paggination -->--}}
       
        </div>  <!-- /.col-lg-9 -->
    </div>  <!-- /.row -->
</div>  <!-- /.container -->

@include('frontend.layouts.partial.footer')