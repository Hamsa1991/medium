<?php
/**
 * Created by PhpStorm.
 * User: hamsa
 * Date: 18/02/2021
 * Time: 09:03 م
 */
?>

@extends('layouts.master')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            {{--Article--}}
            <div class="col-sm-8">
                <div class=""><h1>{{$article->name}}</h1></div>
                <div class="article-info">
                    <div class="article-time">
                        {{$article->updated_at->diffForHumans()}}&nbsp;&nbsp;.
                    </div>
                    <div class="user-name">
                        <span>by {{$article->user->name}}</span>
                    </div>
                </div>
                @if($article->images)
                    @foreach($article->images as $image)
                        <div class="col-xs-12 article-show-image">
                            <img src="{{\Illuminate\Support\Facades\URL::asset("uploads/images/")."/".$image->name}}">
                        </div>
                    @endforeach
                @endif
                <div class="article-show-content">
                    {!! $article->description !!}
                </div>
                {{--show other articles--}}
                {{--@if($more_articles)--}}
                {{--@foreach($more_articles as $article)--}}
                {{--@include("articles.article_body")--}}
                {{--@endforeach--}}
                {{--@endif--}}
            </div>
        </div>
    </div>
@endsection