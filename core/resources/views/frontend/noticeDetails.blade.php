@include('frontend.layouts.partial.head')
@include('frontend.layouts.partial.header')


<div class="container">
    <div class="row">
        <div class="col-lg-3">
            @include('frontend.layouts.partial.sidebar')
        </div>
        <!-- /.col-lg-3 -->

        <div class="col-lg-9">
            <div class="section text-center">
                <div class="row">
                    <div class="col-md-12">
                        <div class="blog-left-grid-left">
                            <h3><a href="#">{{$notice->notice_title}}</a></h3>
                            <p>DATE: <span>{{$notice->created_at->format('d/m/Y')}}</span> </p>
                        </div>
                        <div class="clearfix"> </div>

                        <p>{!! $notice->notice !!}</p>
                        <br><br>
                        <a href="#">
                            @if(!empty($notice->notice_file))
                            @php
                                $notice_file_extension = substr($notice->notice_file,strrpos($notice->notice_file,'.')+1);
                            @endphp
                            @if($notice_file_extension == 'jpg')
                                <a href="#"><img src="{{ asset('assets/uploads/notices/' . $notice->notice_file) }}" alt=" " style="width:100%;"></a>
                            @elseif($notice_file_extension == 'jpeg')
                                <a href="#"><img src="{{ asset('assets/uploads/notices/' . $notice->notice_file) }} }}" alt=" " style="width:100%;"></a>
                            @elseif($notice_file_extension == 'png')
                                <a href="#"><img src="{{ asset('assets/uploads/notices/' . $notice->notice_file) }} }}" alt=" " style="width:100%;"></a>
                            @elseif($notice_file_extension == 'pdf')
                                    <a href="{{asset('assets/uploads/notices/'.$notice->notice_file)}}" class="btn btn-primary btn-sm" download>Download PDF file</a>
                            @endif
                            @endif
                        </a>
                    </div>
                </div>
            </div>
        </div>  <!-- /.col-lg-9 -->
    </div>  <!-- /.row -->
</div>  <!-- /.container -->
