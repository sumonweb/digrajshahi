@if(session()->has('success') || session()->has('warning'))
    <div class="row">
        <div class="col-md-12">
            @if(session()->has('success'))
                <div class="alert alert-success">
                    {{ session()->get('success') }}
                </div>
            @else
                <div class="alert alert-warning">
                    {{ session()->get('warning') }}
                </div>
            @endif
        </div>
    </div>
@endif