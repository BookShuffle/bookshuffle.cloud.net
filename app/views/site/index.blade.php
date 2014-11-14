@extends('site.layouts.index')

{{-- Content --}}
@section('content')

<div id="fullpage">

	<!-- Banner -->
	<section id="section0" class="section active">

		<div id="banner">
			<h2>BookShuffle</h2>
			<p>Read your favorite books like a Apple Shuffle.</p>
			<ul class="actions">
				<li><a href="/user/login" class="button special">Login</a></li>
				<li><a href="#" id="moveSectionDown" class="button">Start Read</a></li>
			</ul>
		</div>
	</section>

	<!-- Main -->
	<section id="section1" class="section">
		<section id="cta">
				<header class="major" style="padding-bottom:0px; margin-bottom:0px;">
					<h3 style="padding-bottom:0px; margin-bottom:0px;">{{{ $book->BookTitle }}}</h3>
				</header>
					@for($i = 1; $i < $book->PreviewCount; $i ++)
					<div class="slide" style="padding-top:0px; margin-top:0px;">
	          <img style="height:88%;" src="/previews/{{{ $book->ISBN }}}_{{{ $i }}}.jpg" alt="" />
					</div>
	        @endfor
		</section>
	</section>

	<div id="callto" class="animated bounceInLeft align-center window-fixed" >
		<a title="Buy" target="_blank" href="{{{ $book->ItemUrl }}}" class="hovicon effect" >
			<img src="/assets/img/buy.png" alt="" />
		</a>
		<a title="Like" href="/{{{ $book->BookId }}}/{{{ $next }}}/1#main" class="hovicon effect" >
			<img src="/assets/img/like.png" alt="" />
		</a>
		<a title="Next" href="/{{{ $book->BookId }}}{{{ $next }}}/0#main" class="hovicon effect" >
			<img src="/assets/img/next.png" alt="" />
		</a>
	</div>

</div>

@stop
