
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
	    <!-- /.col-lg-3 -->

		<div class="col-lg-9">
			<div class="section dig-staff text-center">
				<h4 class="titlebar services">
					<a href="#">List of DIG's</a>
				</h4>

				<div class="table-responsive">	<!-- Responsive Wrap -->
					<table class="table fdig_table table-bordered">	<!-- Staff Table -->
						<thead class="thead-light">
							<tr>
								<th rowspan="2">SL.NO</th>
								<th rowspan="2">Name of Officers</th>
								<th colspan="2">Period</th>
							</tr>
							<tr>
								<th>From</th>
								<th>To</th>
							</tr>
						</thead>	<!-- End thead -->
						<tbody>

							@if($digs)
							@foreach($digs as $key => $dig)

							<tr>
								<td>{{ ++$key }}.</td>
								<td>{{ $dig->dig_name }}</td>
								<td>{{ date('d/m/Y', strtotime($dig->period_from)) }}</td>
								<td>{{ !empty($dig->period_to) ? date('d/m/Y', strtotime($dig->period_to)) : 'Present' }}</td>
							</tr>

							@endforeach
							@endif

						</tbody>	<!-- End tbody -->
					</table>	<!-- End Staff Table -->
				</div>	<!-- End Responsive Wrap -->

				<div class="paggination" style="margin-bottom:20px;">	<!-- Start Paggination -->
					{{ $digs->links() }}
				</div>	<!-- End Paggination -->
		    </div>	<!-- End Section -->
	    </div>  <!-- /.col-lg-9 -->
  	</div>  <!-- /.row -->
</div>  <!-- /.container -->

@include('frontend.layouts.partial.footer')