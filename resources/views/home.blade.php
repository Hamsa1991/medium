@extends('layouts.master')

@section('content')
    <div class="container">
        <div class="">
            {{--Trending articles--}}
            <div class="justify-content-center">
                @if($trending)
                    <div class="tags-title"><b>TRENDING ON MEDIUM</b></div>
                    <div class="row trending-articles">
                        @foreach($trending as $article)
                            <div class="col-12 col-sm-4 trending-article">
                                    <div class="article-title cl-sm-12"><a href="/article/{{$article->id}}">{{$article->name}}</a></div>
                                    <div class="article-content col-sm-12">{!! \Illuminate\Support\Str::limit($article->description, 150, $end='...') !!}</div>
                            </div>
                        @endforeach
                    </div>
                @endif
            </div>
            <hr>
            {{--Articles--}}
            <div class="row">
                <div class="col-sm-8 articles">
                    @if($articles)
                        @foreach($articles as $article)
                            @include('articles.article')
                        @endforeach
                    @endif
                    <div class="">{{$articles->links()}}</div>
                </div>
                {{--Tags--}}
                <div class="col-sm-4 tags">
                    @if($tags)
                        <div class="tags-title"><b>DISCOVER MORE OF WHAT MATTERS TO YOU</b></div>
                        <div class="tags-container">
                            @foreach($tags as $tag)
                                <div class="tag">
                                    <a href="tag/articles/{{$tag->id}}">{{$tag->name}}</a>
                                </div>
                            @endforeach
                        </div>
                        <div class="show-more"><a href="/tag/">Show More</a></div>
                    @endif
                </div>
            </div>
        </div>
    </div>
@endsection
