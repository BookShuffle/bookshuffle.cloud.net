@extends('site.layouts.index')

{{-- Content --}}
@section('content')

<!-- Banner -->
<section id="banner">
	<h2>BookShuffle</h2>
	<p>Read your favorite books like a Apple Shuffle.</p>
	<ul class="actions">
		<li><a href="#" class="button special">Login</a></li>
		<li><a href="#main" class="button">Start Read</a></li>
	</ul>
</section>

<!-- Main -->
<section id="main" class="cta">
	<section class="box special">
		<article class="boxed" style="width:100%;">
			<header class="major">
				<h3>やさしくはじめるiPhoneアプリ開発の学校</h3>
			</header>
			<div class="t">
				<div class="tc rel">
					<div class="book" id="book">
						@for($i = 1; $i < $book->PreviewCount; $i ++)
              <div class="page">
                <img src="/previews/{{{ $book->ISBN }}}_{{{ $i }}}.jpg" alt="" />
              </div>
            @endfor
					</div>
				</div>
			</div>
		</article>
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

@stop
