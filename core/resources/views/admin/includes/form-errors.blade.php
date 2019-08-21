@if($errors->first($field))

    <div class="help-block" style="font-family: Sans-Serif; font-weight: bold;">
        {{ $errors->first($field) }}
    </div>

@endif


{{--@if(count($errors) > 0 )--}}
    {{--<div class="alert alert-danger">--}}
        {{--<ul>--}}
            {{--@foreach($errors->all() as $error)--}}
                {{--<li>{{$error}}</li>--}}
            {{--@endforeach--}}
        {{--</ul>--}}
    {{--</div>--}}
{{--@endif--}}
