<!DOCTYPE HTML>
<html>
  <head>
    <title>BookShuffle - Read your favorite books like a Apple Shuffle.</title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="description" content="" />
    <meta name="keywords" content="" />

    <link rel="stylesheet" href="/assets/css/iconStyle.css" media="screen" title="no title" charset="utf-8">
    <!--[if lte IE 8]><link rel="stylesheet" href="/assets/css/ie/v8.css" /><![endif]-->

    <!-- bookshuffle css -->
    <link rel="stylesheet" type="text/css" href="/assets/css/bookblock.css" />
    <link rel="stylesheet" type="text/css" href="/assets/css/component.css" />

    <!-- bordermenu css -->
    <link rel="stylesheet" type="text/css" href="/assets/css/icons.css" />
		<link rel="stylesheet" type="text/css" href="/assets/css/bordermenu.css" />

    <link rel="stylesheet" href="/assets/css/side-comments.css" />
    <link rel="stylesheet" href="/assets/css/default-theme.css" />

    <script src="/assets/js/jquery.min.js"></script>
    <script src="/assets/js/modernizr.custom.js"></script>

  </head>

  <body>

    <!-- Header -->
    <header id="header">
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

    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.1/jquery-ui.min.js"></script>
    <script src="/assets/js/waterpipe.js"></script>

    <script src="/assets/js/bookblock.min.js"></script>
    <script src="/assets/js/classie.js"></script>
    <script src="/assets/js/bookshuffle.js"></script>
    <script src="/assets/js/borderMenu.js"></script>

    <script src="/assets/js/side-comments.js"></script>
    <script src="/assets/js/test_data.js"></script>
    <script>
    // $(document).ready(function(){
    //   var SideComments = require('side-comments');
    //   window.sideComments = new SideComments('#commentable-container', currentUser, existingComments);
    //   window.sideComments.on('commentPosted', function( comment ) {
    //     comment.id = parseInt(Math.random() * (100000 - 1) + 1);
    //     sideComments.insertComment(comment);
    //   });
    //   window.sideComments.on('commentDeleted', function( comment ) {
    //     sideComments.removeComment(comment.sectionId, comment.id);
    //   });
    // });
  </script>

  </body>
</html>
