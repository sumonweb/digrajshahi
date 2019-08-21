
@include('frontend.layouts.partial.head')
@include('frontend.layouts.partial.header')

<style type="text/css">
    .pagination li a {

        position: relative;
        display: block;
        padding: .5rem .75rem;
        margin-left: -1px;
        line-height: 1.25;
        color: #007bff;
        background-color: #fff;
        border: 1px solid #dee2e6;

    }
    a, .paggination .pagination li a:hover, .paggination .pagination li a:focus, .pagination li a:active {

        text-decoration: none;
        -webkit-transition-duration: 500ms;
        transition-duration: 500ms;
        font-weight: 500;
        outline: none;

    }
    .paggination .active{
        background: #334571;
        border-color: #334571;
        color: #fff;
        position: relative;
        display: block;
        padding: .5rem .75rem;
        margin-left: -1px;
        line-height: 1.25;
    }

    .notice-list .paggination .active .page-link, .paggination .active .page-link {

        background: #334571;
        border-color: #334571;
        color: #fff;

    }
    .paggination .active {

        z-index: 1;
        color: #fff;
        background-color: #007bff;
        border-color: #007bff;

    }
    .paggination .disabled {
        position: relative;
        display: block;
        padding: .5rem .75rem;
        margin-left: -1px;
        line-height: 1.25;
        color: #007bff;
        background-color: #fff;
        border: 1px solid #dee2e6;
    }
</style>

<div class="container con_bg">
    <div class="row">

        <div class="col-lg-3">
            @include('frontend.layouts.partial.sidebar')
        </div> <!-- End col-lg-3 -->

        <div class="col-lg-9">
            <div class="section_table text-center">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12">
                            <div class="card" style="margin-bottom:30px;">  <!-- Card -->
                                <div class="card-body"> <!-- Card Body -->
                                    <h4 class="card-title crime_header" style="text-align:center;" >All Tenders</h4>
                                    <table class="tablesaw table-bordered table-hover table" data-tablesaw-mode="swipe">  <!-- Start Table -->
                                        <thead> <!-- Start thead -->
                                        <tr>
                                            <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="persist" >Tender Tittle</th>
                                            <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="1" >View</th>
                                            <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="2" >Download</th>
                                        </tr>
                                        </thead>  <!-- End thead -->
                                        <tbody>   <!-- Start tbody -->

                                        @if($downloadable_item)
                                        @foreach($downloadable_item as $item)

                                        <tr>
                                            <td class="title">
                                                <a class="link" href="javascript:void(0)">{{ $item->title }}</a>
                                            </td>
                                            <td>
                                                <a href="#" onclick="window.open
                                                        ('{{asset('assets/uploads/downloadcorner/'.$item->file)}}', '_blank', 'fullscreen=yes'); return false;"><img src="{{ asset('assets/images/download/pdf_icon.png') }}"  alt=""></a>
                                            </td>
                                            <td>
                                                <a href="{{ asset('assets/uploads/downloadcorner/'. $item->file) }}" download>
                                                    <i class="fa fa-download" aria-hidden="true" style="font-size:24px;"></i>
                                                </a>  <!-- End Download -->
                                            </td>
                                        </tr> <!-- End tr -->

                                        @endforeach
                                        @endif

                                        </tbody>  <!-- End tbody -->
                                    </table>  <!-- End Table -->
                                </div>  <!-- End Card Body -->
                            </div>  <!-- End Card -->
                        </div>  <!-- End col-lg-12 -->

                        <div class="col-lg-12"> <!-- Start Paggination -->
                            <div class="paggination" style="margin-bottom:20px;margin-top:20px;">
                                <nav aria-label="...">
                                    {{$downloadable_item->links()}}
                                </nav>
                            </div>
                        </div>  <!-- End Start Paggination -->
                    </div>  <!-- End Row -->
                </div>  <!-- End Container Fluid -->
            </div>  <!-- End Section Table -->
        </div>  <!-- /.col-lg-9 -->
    </div>  <!-- /.row -->
</div>  <!-- /.container -->

@include('frontend.layouts.partial.footer')
