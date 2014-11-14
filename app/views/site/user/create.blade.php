@extends('site.layouts.login')

{{-- Web site Title --}}
@section('title')
{{{ Lang::get('user/user.register') }}} ::
@parent
@stop

{{-- Content --}}
@section('content')
	<div class="landview">
    <div id="login">
      <h2>Register</h2>
      <p>Read your favorite books like a Apple Shuffle.</p>
    </div>

    <section id="main" class="container">
      <div class="row">
        <div class="8u -2u">
          <!-- Form -->
          <section class="box">
            <form method="post" action="{{{ (Confide::checkAction('UserController@store')) ?: URL::to('user')  }}}" accept-charset="UTF-8">
							<input type="hidden" name="_token" value="{{{ Session::getToken() }}}">
              <div class="row uniform 50%">
								<div class="12u">
									<input type="text" name="name" id="name" value="{{{ Input::old('username') }}}" placeholder="Username">
								</div>
								<div class="12u">
									<input type="email" name="email" id="email" value="{{{ Input::old('email') }}}" placeholder="Email">
								</div>
                <div class="12u">
                  <input type="password" name="password" id="password" value="" placeholder="Password">
                </div>
                <div class="12u">
                  <input type="password" name="password_confirmation" id="password_confirmation" value="" placeholder="Repeat Password">
                </div>
              </div>

							<div class="row uniform 50%">
								<div class="6u 12u(3)">
									<input type="hidden" name="remember" value="1">
									<input type="checkbox" id="remember" name="remember" checked="checked">
									<label for="remember"></label>
									<a href="/assets/terms" target="_blank">Agree Terms</a>
								</div>
							</div>

							@if ( Session::get('error') )
									<div class="alert alert-error alert-danger">
											@if ( is_array(Session::get('error')) )
													{{ head(Session::get('error')) }}
											@endif
									</div>
							@endif

							@if ( Session::get('notice') )
									<div class="alert">{{ Session::get('notice') }}</div>
							@endif

              <div class="row uniform">
                <div class="12u">
                  <input type="submit" class="button fit special" value="Login">
                </div>
              </div>
            </form>
          </section>
        </div>
      </div>
    </section>
	</div>

@stop
