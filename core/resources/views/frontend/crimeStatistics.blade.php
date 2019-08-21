@include('frontend.layouts.partial.head')
@include('frontend.layouts.partial.header')

<div class="container con_bg">
  	<div class="row">
	    <div class="col-lg-3">
			@include('frontend.layouts.partial.sidebar')    
	    </div>
	    <!-- /.col-lg-3 -->

        <div class="col-lg-9">

        <div class="section_table text-center"> <!-- Start Section -->
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
     
                        <div class="card" style="margin-bottom:30px;">
                            <div class="card-body">

                                <h4 class="card-title crime_header" style="text-align:center;" >Crime Statistics</h4>
                               	<table class="tablesaw table-bordered table-hover table" data-tablesaw-mode="swipe">
                                    <thead>
                                        <tr>
                                            <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="persist" >Unit Name</th>
                                            <th scope="col" data-tablesaw-sortable-col data-tablesaw-sortable-default-col data-tablesaw-priority="1">Robbery</th>
                                            <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="3" >
                                             Murder
                                            </th>
                                            <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="4" >Speedy Trial</th>
                                            <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="5" >Riot</th>
                                            <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="6" >Woman &amp; Child Repression</th>
                                            <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="7" >Kidnapping</th>
                                            <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="8" >Police Assault</th>
                                            <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="9" >Burglary</th>
                                            <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="10">Theft</th>
                                            <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="11" >Other Cases</th>
                                            <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="12" rowspan="2">Total Cases</th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                    @foreach($districts as $district)

                                        <tr id="toggle">
                                            <td class="title" style="width: 25%">
	                                            <a style="float: left; margin-top: -3px;" data-toggle="collapse" href="#thanas{{$district->id}}" role="button" aria-expanded="false" aria-controls="collapseExample"><i class="fa fa-plus-circle" aria-hidden="true"></i></a><span style="margin-top: 5px;">{{ $district->name }}</span>
                                            </td>
                                            <td>{{ $district->robbery }}</td>
                                            <td>{{ $district->murder }}</td>
                                            <td>{{ $district->speedy_trial }}</td>
                                            <td>{{ $district->riot }}</td>
                                            <td>{{ $district->women_child }}</td>
                                            <td>{{ $district->kidnapping }}</td>
                                            <td>{{ $district->police_assault }}</td>
                                            <td>{{ $district->burglary }}</td>
                                            <td>{{ $district->theft }}</td>
                                            <td>{{ $district->other }}</td>
                                            {{--<td>{{  }}</td>--}}
                                        </tr>

                                        <tr class="collapse" id="thanas{{ $district->id }}">
                                            <td colspan="11">
                                                <table class="tablesaw table-bordered table-hover table">
                                                    @foreach($district->thanas as $thana)
                                                        <tr>
                                                            <td class="title" style="width: 25%">{{ $thana->name }}</td>
                                                            <td>0</td>
                                                            <td>0</td>
                                                            <td>0</td>
                                                            <td>0</td>
                                                            <td>0</td>
                                                            <td>0</td>
                                                            <td>0</td>
                                                            <td>0</td>
                                                            <td>0</td>
                                                            <td>0</td>
                                                            <td>0</td>
                                                        </tr>
                                                    @endforeach
                                                </table>
                                            </td>
                                        </tr>

                                    @endforeach

                                    </tbody>
                                </table>	<!-- End Table -->
                            </div>	<!-- End Card Body -->
                        </div>	<!-- End Card -->

                        {{--<div class="card">--}}
                            {{--<div class="card-body">--}}
                                {{--<h4 class="card-title crime_header" style="text-align:center;">Recovery Cases</h4>--}}
                               	{{--<table class="tablesaw table-bordered table-hover table" data-tablesaw-mode="swipe">--}}
                                    {{--<thead>--}}
                                        {{--<tr>--}}
                                            {{--<th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="persist" >Unit Name</th>--}}
                                            {{--<th scope="col" data-tablesaw-sortable-col data-tablesaw-sortable-default-col data-tablesaw-priority="1">Arms Act</th>--}}
                                            {{--<th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="2" >Explosive</th>--}}
                                            {{--<th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="3" >--}}
                                            {{--Narcotics--}}
                                            {{--</th>--}}
                                            {{--<th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="4" >Smuggling</th>--}}
                                            {{--<th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="5" >Total</th>--}}
                                        {{--</tr>--}}
                                    {{--</thead>--}}
                                    {{--<tbody>--}}
                                        {{--<tr>--}}
                                            {{--<td class="title"><a class="link" href="javascript:void(0)">Rajshahi</a></td>--}}
                                            {{--<td>0</td>--}}
                                            {{--<td>0</td>--}}
                                            {{--<td>0</td>--}}
                                            {{--<td>0</td>--}}
                                            {{--<td>0</td>--}}
                                        {{--</tr>--}}
                                        {{--<tr>--}}
                                            {{--<td class="title">--}}
                                            	{{--<a class="link" href="javascript:void(0)">Natore</a>--}}
                                            {{--</td>--}}
                                            {{--<td>0</td>--}}
                                            {{--<td>0</td>--}}
                                            {{--<td>0</td>--}}
                                            {{--<td>0</td>--}}
                                            {{--<td>0</td>--}}
                                        {{--</tr>--}}
                                        {{--<tr>--}}
                                            {{--<td class="title"><a class="link" href="javascript:void(0)">Rajshahi</a></td>--}}
                                            {{--<td>0</td>--}}
                                            {{--<td>0</td>--}}
                                            {{--<td>0</td>--}}
                                            {{--<td>0</td>--}}
                                            {{--<td>0</td>--}}
                                        {{--</tr>--}}
                                        {{--<tr>--}}
                                            {{--<td class="title"><a class="link" href="javascript:void(0)">Rajshahi</a></td>--}}
                                            {{--<td>0</td>--}}
                                            {{--<td>0</td>--}}
                                            {{--<td>0</td>--}}
                                            {{--<td>0</td>--}}
                                            {{--<td>0</td>--}}
                                        {{--</tr>--}}
                                        {{--<tr>--}}
                                            {{--<td class="title"><a class="link" href="javascript:void(0)">Rajshahi</a></td>--}}
                                            {{--<td>0</td>--}}
                                            {{--<td>0</td>--}}
                                            {{--<td>0</td>--}}
                                            {{--<td>0</td>--}}
                                            {{--<td>0</td>--}}
                                        {{--</tr>--}}
                                        {{--<tr>--}}
                                            {{--<td class="title"><a class="link" href="javascript:void(0)">Rajshahi</a></td>--}}
                                            {{--<td>0</td>--}}
                                            {{--<td>0</td>--}}
                                            {{--<td>0</td>--}}
                                            {{--<td>0</td>--}}
                                            {{--<td>0</td>--}}
                                        {{--</tr>--}}
                                        {{--<tr>--}}
                                            {{--<td class="title"><a class="link" href="javascript:void(0)">Rajshahi</a></td>--}}
                                            {{--<td>0</td>--}}
                                            {{--<td>0</td>--}}
                                            {{--<td>0</td>--}}
                                            {{--<td>0</td>--}}
                                            {{--<td>0</td>--}}
                                        {{--</tr>--}}
                                         {{--<tr>--}}
                                            {{--<td class="title"><a class="link" href="javascript:void(0)">Rajshahi</a></td>--}}
                                            {{--<td>0</td>--}}
                                            {{--<td>0</td>--}}
                                            {{--<td>0</td>--}}
                                            {{--<td>0</td>--}}
                                            {{--<td>0</td>--}}
                                        {{--</tr>--}}
                                    {{--</tbody>--}}
                                {{--</table>	<!-- End Table -->--}}
                            {{--</div>	<!-- End Card Body -->--}}
                        {{--</div>	<!-- End Card -->--}}
                    </div>	<!-- End Col 12 -->
                </div>	<!-- End Row -->
            </div>	<!-- Container Fluid -->
	    </div>	<!-- End Secrion -->
    </div>  <!-- /.col-lg-9 -->
  </div>  <!-- /.row -->
</div>  <!-- /.container -->

<script type="text/javascript">
    $("#toggle").on("click", function() {
        $("#hiddenRow").toggleClass("hidden");
    });
</script>

@include('frontend.layouts.partial.footer')
