
@include('frontend.layouts.partial.head')
@include('frontend.layouts.partial.header')

<div class="container">
	<div class="row">
		<div class="col-lg-3">
        @include('frontend.layouts.partial.sidebar')
    </div>
    <!-- /.col-lg-3 -->

		<div class="col-lg-9">
			<div class="section formar-dig text-center"> <!-- Content Section -->
				<h4 class="titlebar services">Our Mission</h4>

				<div class="police-act text-left">
                    <div class="mission-image">
	                    <img class="img img-responsive" src="{{ asset('assets/images/mission.jpg') }}" alt="">
                    </div>
					<br>
					<p>Rajshahi Range Police is committed to enforce law, maintain social order, reduce fear of crime, enhance public safety and ensure internal security with the active support of the community of its jurisdiction. </p>
				</div>	<!-- End Police Act -->

			</div>  <!-- End Content Section -->

			<div class="section formar-dig text-center"> <!-- Content Section -->
				<h4 class="titlebar services">Our Vision</h4>
				<div class="mission-image">
					<img class="img img-responsive" src="{{ asset('assets/images/vision.jpg') }}" alt="">
				</div>
				<br>
				<div class="police-act text-left">
					<p>To provide quality service by competent, efficient and dedicated professionals enjoying trust and respect of citizens to make Rajshahi division a better and safer place to live. </p>
				</div>	<!-- End Police Act -->

			</div>  <!-- End Content Section -->
		</div>  <!-- /.col-lg-9 -->


	</div>  <!-- /.row -->
</div>  <!-- /.container -->

@include('frontend.layouts.partial.footer')