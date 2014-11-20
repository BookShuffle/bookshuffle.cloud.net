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
				<img src="/previews/{{{ $book->ISBN }}}_{{{ $i }}}.jpg" alt="" />
			</div>
			@endfor
		</section>
	</section>

	<div id="pin">
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
	</div>

</div>

<!-- Here is the codes to implement how to let buttons toggle up and down. Including css and javascript.

In order to see and debug it easily, I did not move to other css or js files

 -->
<style media="screen">

	#pin {
		position:absolute;
		bottom: 0;
		height:15%;
		width: 100%;
		z-index: 2;
	}

	#callto {
		position: absolute;
		display:none;
		margin-left: -230px;
    left:50%;
		bottom: 10%;
	}
</style>

<script charset="utf-8">

	$(document).ready(function(){
		$('#pin').hover(function(){
			$("#callto").stop(true, false).slideDown("slow");
		}, function(){
			$("#callto").stop(true, false).slideUp("slow");
		});

	});

</script>

@stop
