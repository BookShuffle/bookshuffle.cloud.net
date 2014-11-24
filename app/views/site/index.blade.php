@extends('site.layouts.read')

{{-- Content --}}
@section('content')

	<!-- Main -->
	<div class="bb-custom-wrapper" id="book" pageId="1">
		<div class="bb-bookblock">
			@for($i = 1; $i < $book->PreviewCount; $i += 2)
				<div class="bb-item">
						<div class="bb-custom-side page-layout-3" style="background-image:url('/previews/{{{ $book->ISBN }}}_{{{ $i }}}.jpg')"></div>
						<div class="bb-custom-side page-layout-3" style="background-image:url('/previews/{{{ $book->ISBN }}}_{{{ $i+1 }}}.jpg')"></div>
				</div>
			@endfor
		</div><!-- /bb-bookblock -->
		<nav>
			<a href="#" class="bb-nav-prev">Previous</a>
			<a href="#" class="bb-nav-next">Next</a>
		</nav>
	</div><!-- /bb-custom-wrapper -->

	<div id="st-container" class="st-container">
		<!-- contains side comment -->
		<div class="st-menu st-effect-1" id="side-comment">
			<div id="commentable-container" class="container commentable-container">
				@for($i = 1; $i < $book->PreviewCount; $i += 2)
					<div id="cs-{{{ ($i - 1) / 2 }}}" class="commentable-section side-comments-open" data-section-id="{{{ ($i - 1) / 2 }}}">
					</div>
				@endfor
			</div>
		</div>
	</div>

	<nav id="bt-menu" class="bt-menu">
		<a href="#" class="bt-menu-trigger"><span>Menu</span></a>
		<ul>
			<li><a href="{{{ $book->ItemUrl }}}" target="_blank" class="bt-icon icon-speaker"></a></li>
			<li><a href="/read/{{{ $book->BookId }}}/{{{ $next }}}" class="bt-icon icon-star"></a></li>
			<li><a href="/read/{{{ $book->BookId }}}/{{{ $next }}}" class="bt-icon icon-refresh"></a></li>
			@if (Auth::check())
			<li><a href="/user/index" class="bt-icon icon-home"></a></li>
			@else
			<li><a href="/" class="bt-icon icon-home"></a></li>
			@endif
			<li><a href="#" class="bt-icon icon-user-outline" id="comment-sidebar" data-effect="st-effect-1"></a></li>
			<li><a href="#" class="bt-icon icon-facebook"></a></li>
		</ul>
	</nav>

	<!-- <div id="pin">
		<div id="callto">
			<a title="Buy" target="_blank" href="{{{ $book->ItemUrl }}}" class="hovicon effect" >
				<img src="/assets/img/buy.png" alt="" />
			</a>
			<a title="Like" href="/read/{{{ $book->BookId }}}/{{{ $next }}}" class="hovicon effect" >
				<img src="/assets/img/like.png" alt="" />
			</a>
			<a title="Next" href="/read/{{{ $book->BookId }}}{{{ $next }}}" class="hovicon effect" >
				<img src="/assets/img/next.png" alt="" />
			</a>
		</div>
	</div> -->

<!-- Here is the codes to implement how to let buttons toggle up and down. Including css and javascript.

In order to see and debug it easily, I did not move to other css or js files

 -->
<style media="screen">

	/*#pin {
		position:fixed;
		bottom: 0;
		height:15%;
		width: 100%;
		z-index: 2;
	}

	#callto {
		position: fixed;
		display: none;
		margin-left: -230px;
    left:50%;
		bottom: 10%;
	}

	#comment {
		position: absolute;
		right: 0;
		height: 100%;
		width: 500px;
		z-index: 3;
	}*/
</style>

<script charset="utf-8">
//
// 	$(document).ready(function(){
// 		$('#pin').hover(function(){
// 			$("#callto").stop(true, false).slideDown("slow");
// 		}, function(){
// 			$("#callto").stop(true, false).slideUp("slow");
// 		});
//
// 	});
//
</script>

@stop
