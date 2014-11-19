@extends('site.layouts.index')

{{-- Content --}}
@section('content')

	<!-- Banner -->
		<div id="banner">
			<h2>BookShuffle</h2>
			<p>Read your favorite books like a Apple Shuffle.</p>
			<ul class="actions">
				<li><a href="/user/login" class="button special">Login</a></li>
				<li><a href="/read" class="button">Start Read</a></li>
			</ul>
		</div>

@stop
