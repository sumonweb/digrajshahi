
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
        <h4 class="titlebar services">Police Activities</h4>

	        <div class="police-act text-left">
	        	<p>Police devotes a round the clock service to public order management, security, peace and tranquility and to secure life and property of the people. The functions in generally carried out by Police are as follows:</p>

	        	<div class="act-list">
	        		<h3>Crime Management:</h3>
	        		<ul>
	        			<li>Response to crime incidents</li>
	        			<li>Collecting intelligence</li>
	        			<li>Investigation the fact </li>
	        			<li>Verification of the respective subject</li>
	        			<li>Traffic management</li>
	        			<li>Participating in prosecution</li>
	        		</ul>
	        	</div>

	        	<div class="act-list">
	        		<h3>Internal Security:</h3>
	        		<ul>
	        			<li>Security patrols for public order management</li>
	        			<li>VVIP security & KPI security</li>
	        			<li>Security in any occasional event </li>
	        		</ul>
	        	</div>

	        	<div class="act-list">
	        		<h3>Social Integration:</h3>
	        		<ul>
	        			<li>Developing public awareness to prevent social crime</li>
	        			<li>Community policing</li>
	        			<li>Victim support center</li>
	        			<li>Police help line apps</li>
	        			<li>Service delivery center</li>
	        			<li>Nari shishu  desk</li>
	        			<li>Women support center</li>
	        			<li>999 Service</li>
	        		</ul>
	        	</div>

	        </div>	<!-- End Police Act -->
        
        
        </div>  <!-- End Content Section -->

        
       
    </div>  <!-- /.col-lg-9 -->
  </div>  <!-- /.row -->
</div>  <!-- /.container -->

@include('frontend.layouts.partial.footer')