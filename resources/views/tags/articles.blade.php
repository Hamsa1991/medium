<?php
/**
 * Created by PhpStorm.
 * User: hamsa
 * Date: 18/02/2021
 * Time: 08:45 م
 */
//dd($articles);
?>
@extends('layouts.master')

@section('content')
    <div class="page-title">Articles of {{$tag->name}}</div>
    <div class="container">
        <div class="row ">
            {{--Articles--}}
            <div class="col-sm-8 articles tag-articles">
                @if($articles)
                    @foreach($articles as $article)
                        @include('articles.article')
                    @endforeach
                @endif
            </div>
        </div>
    </div>
@endsection