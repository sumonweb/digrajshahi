@extends('layouts.app')

@section('content')

<div class="limiter">
    <div class="container-login100" style="background-image: url('{{ asset('assets/backend/bg-01.jpg') }}');">
        <div class="wrap-login100">
            <form class="login100-form validate-form" method="POST" action="{{ route('login') }}">
                {{ csrf_field() }}
                <span class="login100-form-logo">
                    <img src="{{ asset('assets/images/rrrr_logo.png') }}" style="height: 105px; width: 105px;">
                </span>

                <span class="login100-form-title p-b-34 p-t-27">
                    DIG Rajshahi Range
                    <span style="font-family: Roboto; font-size: 16px; text-align: center; color: #fff; line-height: 14px;">Bangladesh Police</span><br>
                    {{--<span style="font-family: Roboto; font-size: 18px; text-align: center; color: #fff; line-height: 14px;">Admin login</span>--}}
                </span>


                @if ($errors->has('email'))
                    <span class="help-block">
                            <strong style="color: #FF0000;">{{ $errors->first('email') }}</strong>
                        </span>
                @endif
                <div class="wrap-input100 validate-input {{ $errors->has('email') ? ' has-error' : '' }}" data-validate = "Enter email">
                    <input class="input100" type="email" name="email" placeholder="Email" value="{{ old('email') }}" required autofocus>
                    <span class="focus-input100" data-placeholder="&#xf207;"></span>

                </div>

                @if ($errors->has('password'))
                    <span class="help-block">
                            <strong style="color: #8b0000;">{{ $errors->first('password') }}</strong>
                        </span>
                @endif
                <div class="wrap-input100 validate-input {{ $errors->has('email') ? ' has-error' : '' }}" data-validate="Enter password">
                    <input class="input100" type="password" name="password" placeholder="Password" required>
                    <span class="focus-input100" data-placeholder="&#xf191;"></span>
                </div>

                <div class="contact100-form-checkbox">
                    <input class="input-checkbox100" id="ckb1" type="checkbox" name="remember" {{ old('remember') ? 'checked' : '' }}>
                    <label class="label-checkbox100" for="ckb1">
                        Remember me
                    </label>
                </div>

                <div class="container-login100-form-btn">
                    <button class="login100-form-btn">
                        Login
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>
@endsection