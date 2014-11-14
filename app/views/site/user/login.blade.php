@extends('site.layouts.login')

{{-- Web site Title --}}
@section('title')
{{{ Lang::get('user/user.login') }}} ::
@parent
@stop

{{-- Content --}}
@section('content')

<div class="landview">

  <div id="login">
    <h2>Login</h2>
    <p>Read your favorite books like a Apple Shuffle.</p>
  </div>

  <section id="main" class="container">
    <div class="row">
      <div class="8u -2u">
        <!-- Form -->
        <section class="box">
          <form method="post" action="{{{ Confide::checkAction('UserController@do_login') ?: URL::to('/user/login') }}}" accet-charset="UTF-8">
						<input type="hidden" name="_token" value="{{ csrf_token() }}">
            <div class="row uniform 50%">
              <div class="12u">
                <input type="text" name="email" id="email" value="{{ Input::old('email') }}" placeholder="Email">
              </div>
              <div class="12u">
                <input type="password" name="password" id="password" value="" placeholder="Password">
              </div>
            </div>
            <div class="row uniform 50%">
              <div class="6u 12u(3)">
								<input type="hidden" name="remember" value="0">
                <input type="checkbox" id="remember" name="remember">
                <label for="remember">Remember me</label>
              </div>
              <div class="6u 12u(3)">
                <a href="/">Fogot Password ?</label>
              </div>
            </div>

						@if ( Session::get('error') )
						<div class="alert alert-danger">{{ Session::get('error') }}</div>
						@endif

						@if ( Session::get('notice') )
						<div class="alert">{{ Session::get('notice') }}</div>
						@endif

            <div class="row uniform">
              <div class="12u">
                <input type="submit" class="button fit special" value="Register">
              </div>
            </div>
          </form>
        </section>
      </div>
    </div>
  </section>

</div>

@stop
