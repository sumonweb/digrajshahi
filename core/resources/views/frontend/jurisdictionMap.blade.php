@include('frontend.layouts.partial.head')
@include('frontend.layouts.partial.header')

<div class="container">
	<div class="row">
		<div class="col-lg-3">
			@include('frontend.layouts.partial.sidebar')
		</div>
		<div class="col-lg-9 mt-4">
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d928943.7672251429!2d88.513641049901!3d24.56323788090473!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39e3510ce14e0c51%3A0xa1b1f07f4fb6a859!2sRajshahi+Division!5e0!3m2!1sen!2sbd!4v1563625165466!5m2!1sen!2sbd" width="100%" height="550" frameborder="0" style="border:0" allowfullscreen></iframe>
		</div>
	</div>
</div>

@include('frontend.layouts.partial.footer')