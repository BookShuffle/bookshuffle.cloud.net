@extends('site.layouts.index')

{{-- Content --}}
@section('content')

<div id="banner" style="height:250px; padding:80px 0 0 0;">
  <h2>BookShuffle</h2>
  <p>Read your favorite books like a Apple Shuffle.</p>
</div>



<div class="main">
  <div id="bookshelf" class="bookshelf">
    @for($i = 1; $i < count($books); $i ++)
    <figure>
      <div class="book" data-book="book-{{{ $i }}}" imgurl="{{{ $books[$i]->ImgUrl }}}" ></div>
      <div class="buttons"><a href="/hisread/{{{ $books[$i]->BookId }}}">Read</a><a href="#">Details</a></div>
      <figcaption><h2>{{{ $books[$i]->BookTitle }}}<span>{{{ $books[$i]->Author }}}</span></h2></figcaption>
      <div class="details">
        <ul>
          <li>{{{ $books[$i]->ItemCaption }}}</li>
          <li>{{{ $books[$i]->PublisherName }}}</li>
          <li>{{{ $books[$i]->ISBN }}}</li>
          <li>{{{ $books[$i]->CommentScore }}}</li>
        </ul>
      </div>
    </figure>
    @endfor
  </div>
</div><!-- /main -->

@stop
