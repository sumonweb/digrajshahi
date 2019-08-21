@include('frontend.layouts.partial.head')
@include('frontend.layouts.partial.header')


<div class="container mt-4">
    <div class="row about-rajshahi">
        <div class="col-md-4">
            <div class="frame">
                <img src="{{ asset('assets/uploads/thana/'.$thana->thana_image) }}" alt="Police Station Image">
            </div>
        </div>
        <div class="col-md-8">
            <div class="card h-100">
                <div class="card-body">
                    <h4 class="titlebar ">
                        <a>About Thana</a>
                    </h4>
                    <div class="card-text scrollable">
                        <span> {!! $thana->about_thana !!} </span>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row mt-4">
        <div class="col-md-6 mb-3">
            <div class="contact-information">
                <h4 class="titlebar services">
                    <a >Contact Info</a>
                </h4>

                @if($thana_contacts)
                @foreach($thana_contacts as $contacts)
                <div class="contact-person-details">
                    {{--@if(!empty($contacts->person_name))--}}
                    {{--<p><i class="fa fa-user-circle-o" aria-hidden="true" style="margin-right: 10px;"></i> {{ $contacts->person_name }}</p>--}}
                    {{--@endif--}}
                    <p><i class="fa fa-graduation-cap fa-fw text-muted"  style="margin-right: 10px;" data-toggle="tooltip" title="" data-original-title="{{$contacts->designation}}"></i>{{ $contacts->designation }} </p>
                    @if(!empty($contacts->mobile))
                    <p><i class="fa fa-mobile" aria-hidden="true" style="margin-right: 10px;"></i> {{ $contacts->mobile }}</p>
                    @endif
                    @if(!empty($contacts->phone))
                    <p><i class="fa fa-phone" aria-hidden="true" style="margin-right: 10px;"></i> {{ $contacts->phone }}</p>
                    @endif
                    @if(!empty($contacts->fax))
                    <p><i class="fa fa-fax" aria-hidden="true" style="margin-right: 10px;"></i> {{ $contacts->fax }}</p>
                    @endif
                    @if(!empty($contacts->email))
                    <p><i class="fa fa-envelope" aria-hidden="true" style="margin-right: 10px;"></i> {{ $contacts->email }}</p>
                    @endif
                </div>
                @endforeach
                @endif

            </div>
        </div>
        <div class="col-md-6 mb-3">
            <div class="contact-information">
                @if(empty($thana->map))
                    <h4>Thana location not given</h4>
                @else
                {!! $thana->map !!}
                @endif
            </div>
        </div>
    </div>
</div>


    

@include('frontend.layouts.partial.footer')