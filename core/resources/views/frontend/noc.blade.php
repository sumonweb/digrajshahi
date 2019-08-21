
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

<div class="container">
    <div class="row">
        <div class="col-lg-3">
            @include('frontend.layouts.partial.sidebar')
        </div>
        <div class="col-lg-9">
            <h4 class="titlebar services" style="margin-top:25px;">
                <a href="#">No Objection Certificates</a>
            </h4>
            <div class="row">

            @if($nocs)
                @foreach($nocs as $noc)

                <div class="col-lg-4 col-md-6 mb-3">
                    <div class="noc-wrap">
                        <center>
                            <span style="color:#131B43; font-size: 16px; ">{{$noc->noc_name}}</span>
                        </center>
                        <img class="noc-main-img" src="{{ asset('assets/uploads/noc/'.$noc->noc_img) }}" alt="Voucher 1"  data-toggle="modal" data-target="#exampleModal{{$noc->id}}">
                        <center>
                            <a href="#" onclick="VoucherPrint('{{ asset('assets/uploads/noc/'.$noc->noc_img) }}'); return false;" class="myButton">
                                Print NOC</a>
                            <a class="nocd-btn" href="{{ asset('assets/uploads/noc/'.$noc->noc_img) }}" download>download</a>
                        </center>
                        <div class="modal fade" id="exampleModal{{$noc->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel"></h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <img src="{{ asset('assets/uploads/noc/'.$noc->noc_img) }}" >
                                    </div>  <!-- End Modal Body -->
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                    </div>
                                </div>
                            </div>
                        </div>  <!-- End Modal -->
                    </div>  <!-- End Noc Wrap -->
                </div>  <!-- End Col-lg-4 -->

                @endforeach
            @endif

                <div class="col-lg-12">
                    <div class="paggination" style="margin-bottom:20px;"> <!-- Start Paggination -->
                        {{$nocs->links()}}
                    </div>  <!-- End Paggination -->
                </div>  <!-- /.col-lg-12 -->
            </div>  <!-- /.row -->
        </div>  <!-- /.col-lg-9 -->
    </div>  <!-- /.row -->
</div>  <!-- /.container -->


<!-- Print Script -->
<script type="text/javascript">
    function VoucherSourcetoPrint(source) {
        console.log(source);
        return "<html><head><script>function step1(){\n" +
            "setTimeout('step2()', 10);}\n" +
            "function step2(){window.print();window.close()}\n" +
            "</scri" + "pt></head><body onload='step1()'>\n" +
            "<img src='" + source + "' /></body></html>";
    }
    function VoucherPrint(source) {
        Pagelink = "about:blank";
        var pwa = window.open(Pagelink, "_new");
        pwa.document.open();
        pwa.document.write(VoucherSourcetoPrint(source));
        pwa.document.close();
    }
</script>
<!-- End Print Script -->

<!-- Print Preview Modal -->
<script>
    // Get the modal
    var modal = document.getElementById('myModal');

    // Get the image and insert it inside the modal - use its "alt" text as a caption
    var img = document.getElementById('myImg');
    var modalImg = document.getElementById("img01");
    var captionText = document.getElementById("caption");
    img.onclick = function(){
        modal.style.display = "block";
        modalImg.src = this.src;
        captionText.innerHTML = this.alt;
    }

    // Get the <span> element that closes the modal
    var span = document.getElementsByClassName("close")[0];

    // When the user clicks on <span> (x), close the modal
    span.onclick = function() {
        modal.style.display = "none";
    }
</script>
<!-- End Print Preview Modal -->

@include('frontend.layouts.partial.footer')

