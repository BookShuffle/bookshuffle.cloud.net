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
    <!--[if lte IE 8]><link rel="stylesheet" href="/assets/css/ie/v8.css" /><![endif]-->

    <script src="/assets/js/jquery.min.js"></script>

  </head>

  <body class="landing" style="background-image: url(/assets/img/4.jpg);">

    <!-- Header -->
    <header id="header" class="alt">
      <h1><a href="/"><img src="/assets/img/logo.gif" alt="BookShuffle" style="width:40px;"/>BookShuffle</a></h1>
      <nav id="nav">
        <ul>
          @if (Auth::check())
          <li>Welcome {{{ Auth::user()->username }}}</li>
          <li><a href="{{{ URL::to('user/logout') }}}">Logout</a></li>
          @else
          <li><a href="{{{ URL::to('user/login') }}}" {{ (Request::is('user/login') ? ' class="button"' : '') }}>Login</a></li>
          <li><a href="{{{ URL::to('user/create') }}}" {{ (Request::is('user/create') ? ' class="button"' : '') }}>Register</a></li>
          @endif
        </ul>
      </nav>
    </header>

    <!-- Content -->
    @yield('content')
    <!-- ./ content -->


    <!-- Footer -->
    <!-- <footer id="footer">
      <ul class="copyright">
        <li>&copy; 2014 | BookShuffle of Rakuten. All rights reserved.</li><li>Design: <a href="http://www.github.com/clongbupt">Colon</a></li>
      </ul>
    </footer> -->

    <!--[if lte IE 8]><script src="/assets/css/ie/html5shiv.js"></script><![endif]-->
    <script src="/assets/js/jquery.dropotron.min.js"></script>
    <script src="/assets/js/jquery.scrollgress.min.js"></script>
    <script src="/assets/js/skel.min.js"></script>
    <script src="/assets/js/skel-layers.min.js"></script>
    <script src="/assets/js/init.js"></script>
    <script src="/assets/js/jquery.ripples.js"></script>
    <script charset="utf-8">

      $(document).ready(function() {

        try {
      		$('body').ripples({
      			resolution: 512,
      			dropRadius: 20, //px
      			perturbance: 0.04,
      		});
      		$('main').ripples({
      			resolution: 128,
      			dropRadius: 10, //px
      			perturbance: 0.04,
      		});
      	}
      	catch (e) {
      		$('.error').show().text(e);
      	}

        setInterval(function() {
      		var $el = $('body');
      		var x = Math.random() * $el.outerWidth();
      		var y = Math.random() * $el.outerHeight();
      		var dropRadius = 20;
      		var strength = 0.04 + Math.random() * 0.04;

      		$el.ripples('drop', x, y, dropRadius, strength);
      	}, 400);
          });

    </script>
  </body>
</html>
