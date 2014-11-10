<!DOCTYPE html>
<html lang="en">
	<head>
		<!-- Basic Page Needs
		================================================== -->
		<meta charset="utf-8" />
		<title>
			@section('title')
			bookShuffle - Read your favorite books like a Apple Shuffle.
			@show
		</title>
		@section('meta_keywords')
		<meta name="keywords" content="bookShuffle - Read your favorite books like a Apple Shuffle." />
		@show
		@section('meta_author')
		<meta name="author" content="Edit by Colon" />
		@show
		@section('meta_description')
		<meta name="description" content="bookShuffle - Read your favorite books like a Apple Shuffle." />
    @show
		<!-- Mobile Specific Metas
		================================================== -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		<!-- CSS
		================================================== -->
    <link rel="stylesheet" href="{{asset('bootstrap/css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{asset('bootstrap/css/bootstrap-theme.min.css')}}">
		<!-- Generic page styles -->
		<link rel="stylesheet" href="/assets/css/style.css">
		<!-- CSS to style the file input field as button and adjust the Bootstrap progress bars -->

		<!-- TODO find out which one to drop down -->
    <link href="/assets/css/styles.css" rel="stylesheet">
    <link rel="stylesheet" href="/assets/css/basic.css" media="screen" title="no title" charset="utf-8">
    <link rel="stylesheet" href="/assets/css/iconStyle.css">

		<link href="//vjs.zencdn.net/4.10/video-js.css" rel="stylesheet">
    <!-- Login Styles -->
    <link rel="stylesheet" href="/assets/css/loginStyle.css" media="screen" type="text/css" />

    <!-- fonts -->
    <script src="http://use.edgefonts.net/source-sans-pro:n3,i3,n4,i4,n6,i6,n7,i7.js"></script>
    <script src="http://use.edgefonts.net/source-code-pro.js"></script>


		@section('styles')
		@show

		<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
		<!--[if lt IE 9]>
		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->

		<!-- Favicons
		================================================== -->
		<link rel="apple-touch-icon-precomposed" sizes="144x144" href="{{{ asset('assets/ico/apple-touch-icon-144-precomposed.png') }}}">
		<link rel="apple-touch-icon-precomposed" sizes="114x114" href="{{{ asset('assets/ico/apple-touch-icon-114-precomposed.png') }}}">
		<link rel="apple-touch-icon-precomposed" sizes="72x72" href="{{{ asset('assets/ico/apple-touch-icon-72-precomposed.png') }}}">
		<link rel="apple-touch-icon-precomposed" href="{{{ asset('assets/ico/apple-touch-icon-57-precomposed.png') }}}">
		<link rel="shortcut icon" href="{{{ asset('assets/ico/favicon.png') }}}">

		<script src="//vjs.zencdn.net/4.10/video.js"></script>

	</head>

	<body>
			<!-- To make sticky footer need to wrap in a div -->
			<div id="wrap">
				<!-- Navbar -->
				<nav id="primary">

					<div id="logo-head">
						<a href="/" style="font-size:15px;">
							<img src="/assets/img/logo.gif" alt="BookShuffle" style="width:40px;"/>
							BookShuffle
						</a>
					</div>

					<div id="regbar">

	            <div id="navthing">
			            @if (Auth::check())
			            <h2><a href="{{{ URL::to('user') }}}">Welcome {{{ Auth::user()->username }}}</a></h2>
			            <h2><a href="{{{ URL::to('user/logout') }}}">Logout</a></h2>
			            @else
			            <h2><a href="#" id="loginform">Login</a> |  {{ (Request::is('user/create') ? ' class="active"' : '') }}<a href="{{{ URL::to('user/create') }}}">{{{ Lang::get('site.sign_up') }}}</a></h2>

			            <div class="login">
			                <div class="arrow-up"></div>
		                  <div class="formholder">
		                      <div class="randompad">
		                         <fieldset>
		                           <label id="email">Email</label>
		                           <input type="email" value="example@example.com" />
		                           <label id="password">Password</label>
		                           <input type="loginPassword" />
		                           <input type="submit" value="Login" />
		                           <label id="forgetPassword"><a href="#" type="forgetPasswordLink">Forget Password</a></label>
		                         </fieldset>
		                      </div>
		                  </div>
			            </div>
			            @endif
	            </div>
	       </div>
				</nav>
			</div>
			<!-- ./ navbar -->

			<!-- Content -->
			@yield('content')
			<!-- ./ content -->


	    <div id="footer">
	      <div class="container" style="margin-top: 30px;">
	        <p class="muted credit" style="text-align:center;">@ CopyRight 2014 | bookShuffle Team of Rakuten</p>
	      </div>
	    </div>

		<!-- Javascripts
		================================================== -->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
        <script src="{{asset('bootstrap/js/bootstrap.min.js')}}"></script>
				<script src="{{asset('bootstrap/js/login.js')}}"></script>

				<script charset="utf-8" src="/assets/js/turn.min.js"></script>
				<script charset="utf-8" src="/assets/js/basic.js"></script>

	</body>
</html>
