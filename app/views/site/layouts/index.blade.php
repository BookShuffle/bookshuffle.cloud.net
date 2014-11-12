<!DOCTYPE HTML>
<html>
	<head>
		<title>BookShuffle - Read your favorite books like a Apple Shuffle.</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<noscript>
			<link rel="stylesheet" href="/assets/css/skel.css" />
			<link rel="stylesheet" href="/assets/css/style.css" />
			<link rel="stylesheet" href="/assets/css/style-wide.css" />
		</noscript>
		<link rel="stylesheet" href="/assets/css/iconStyle.css" media="screen" title="no title" charset="utf-8">
		<!--[if lte IE 8]><link rel="stylesheet" href="/assets/css/ie/v8.css" /><![endif]-->

		<link rel="stylesheet" type="text/css" href="/assets/css/jquery.fullPage.css" />

	</head>

	<body class="landing">

		<!-- Header -->
		<header id="header" class="alt">
			<h1><a href="/"><img src="/assets/img/logo.gif" alt="BookShuffle" style="width:40px;"/>BookShuffle</a></h1>
			<nav id="nav">
				<ul>
					@if (Auth::check())
					<li>Welcome {{{ Auth::user()->username }}}</li>
					<li><a href="{{{ URL::to('user/logout') }}}" class="button">Logout</a></li>
					@else
					<li><a href="{{{ URL::to('user/create') }}}" class="button">Login</a></li>
					<li><a href="{{{ URL::to('user/register') }}}" class="button">Register</a></li>
					@endif
				</ul>
			</nav>
		</header>

		<!-- Content -->
		@yield('content')
		<!-- ./ content -->


		<!-- Footer -->
		<footer id="footer">
			<ul class="copyright">
				<li>&copy; 2014 | BookShuffle of Rakuten. All rights reserved.</li><li>Design: <a href="http://www.github.com/clongbupt">Colon</a></li>
			</ul>
		</footer>

		<!--[if lte IE 8]><script src="/assets/css/ie/html5shiv.js"></script><![endif]-->
		<script src="/assets/js/jquery.min.js"></script>
		<script src="/assets/js/jquery.dropotron.min.js"></script>
		<script src="/assets/js/jquery.scrollgress.min.js"></script>
		<script src="/assets/js/skel.min.js"></script>
		<script src="/assets/js/skel-layers.min.js"></script>
		<script src="/assets/js/init.js"></script>

		<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.1/jquery-ui.min.js"></script>
			<script type="text/javascript" src="/assets/js/jquery.fullPage.js"></script>
			<script type="text/javascript">
				$(document).ready(function() {
					$('#fullpage').fullpage({
						// slidesNavigation: true
					});

					$('#moveSectionDown').click(function(e){
						e.preventDefault();
						$.fn.fullpage.moveSectionDown();
					});
				});
			</script>

	</body>
</html>
