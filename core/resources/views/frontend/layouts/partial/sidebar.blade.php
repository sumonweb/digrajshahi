<div class="side_menu" style=" margin-top:25px;"> <!-- Left Side Menu -->

	<div class="accordion" id="accordionPs">
		@if($districts)
			@foreach($districts as $district)
				<div class="card">
					<div class="card-header" id="headingThree">
						<h5 class="mb-0">
							<a class="btn btn-link" href="{{ url('sp/'.$district->id) }}">{{ $district->name_english }}</a>
						</h5>
					</div>
				</div>
            @endforeach
		@endif

		<div class="card" style="margin-top:20px;">
			<div class="card-header" id="headingThree">
				<h5 class="mb-0">
					<a class="btn btn-link" href="https://digrajshahirange.gov.bd:2096/" target="_blank">Webmail login</a>
				</h5>
			</div>
		</div>
	</div>
</div><!-- End Left Side Menu -->

<div class="widget-wrapper mb-4 mt-4">  <!-- Weather Wedget -->
	<ul>
		<li class="header-top"><span>Weather</span></li>
		<li>
			<a href="#">
				<span class="fa fa-cloud" style="font-size:19px;" ></span>Rajshahi
				<span class="badge">40&deg;C</span>
			</a>
		</li>
		<li>
			<span class="fa fa-cloud" style="font-size:19px;" ></span>Chapainawabgang
			<span class="badge">40&deg;C</span>
		</li>
		<li>
			<span class="fa fa-sun-o" style="font-size:19px;" ></span>Naogaon
			<span class="badge">35&deg;C</span>
		</li>
		<li>
			<span class="fa fa-cloud" style="font-size:19px;" ></span>Natore
			<span class="badge">37&deg;C</span>
		</li>
		<li>
			<span class="fa fa-sun-o" style="font-size:19px;" ></span>Pabna
			<span class="badge">30&deg;C</span>
		</li>
		<li>
			<span class="fa fa-cloud" style="font-size:19px;" ></span>Sirajganj
			<span class="badge">35&deg;C</span>
		</li>
		<li>
			<span class="fa fa-sun-o" style="font-size:19px;" ></span>Bogra
			<span class="badge">34&deg;C</span>
		</li>
		<li>
			<span class="fa fa-sun-o" style="font-size:19px;" ></span>Joypurhat
			<span class="badge ">41&deg;C</span>
		</li>
	</ul>
</div>  <!-- End Weather Wedget -->