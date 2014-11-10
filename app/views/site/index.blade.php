@extends('site.layouts.index')

{{-- Content --}}
@section('content')

<div id="content">


    <section id="page" style="padding-top:25px;">
        <article class="boxed" style="width:100%;">
                <h2 style="text-align:center;">{{{ $book->BookTitle  }}}</h2>
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

              <div id="callto" class="animated bounceInLeft aligncenter">
                  <a title="Buy" target="_blank" href="{{{ $book->ItemUrl }}}" class="hovicon effect" >
                    <img src="/assets/img/buy.png" alt="" />
                  </a>
                  <a title="Like" href="/{{{$book->BookId }}}/{{{ $next }}}" class="hovicon effect" >
                    <img src="/assets/img/like.png" alt="" />
                  </a>
                  <a title="Next" href="/{{{$book->BookId }}}/{{{ $next }}}" class="hovicon effect" >
                    <img src="/assets/img/next.png" alt="" />
                  </a>
              </div>
        </article>
    </section>

</div>
@stop
