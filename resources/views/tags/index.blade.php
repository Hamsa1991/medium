<?php
/**
 * Created by PhpStorm.
 * User: hamsa
 * Date: 18/02/2021
 * Time: 09:34 م
 */
?>
@extends('layouts.master')

@section('content')
    <div class="page-title">Topics</div>
    <div class="container">
        <div class="row ">
            {{--Tags--}}
            <div class="col-sm-8 tags" >
                @if($tags)
                    <div data-slick='{"slidesToShow": 10, "slidesToScroll": 1}'>
                    @foreach($tags as $tag)
                        <div class="tag">
                            <a href="/tag/articles/{{$tag->id}}">{{$tag->name}}</a>
                        </div>
                    @endforeach
                    </div>
                @endif
            </div>
        </div>
    </div>
@endsection
