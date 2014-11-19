@extends('site.layouts.index')

{{-- Content --}}
@section('content')

<div id="fullpage">

	<!-- Main -->
	<section id="section0" class="section">
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
		<a title="Like" href="/read/{{{ $book->BookId }}}/{{{ $next }}}/1#main" class="hovicon effect" >
			<img src="/assets/img/like.png" alt="" />
		</a>
		<a title="Next" href="/read/{{{ $book->BookId }}}{{{ $next }}}/0#main" class="hovicon effect" >
			<img src="/assets/img/next.png" alt="" />
		</a>
	</div>

</div>

@stop
