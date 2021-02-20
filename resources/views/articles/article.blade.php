<?php
/**
 * Created by PhpStorm.
 * User: hamsa
 * Date: 18/02/2021
 * Time: 06:43 م
 */
//get article first image
if(isset($article->images) && count($article->images)){
    $src = URL::asset("uploads/images/").'/'.$article->images[0]->name;
}else{
    //show logo if there is no images in article
    $src =  URL::asset("images/").'/logo.png';
}
?>
<div class="article row">
    <div class="col-sm-8">
        <div class="article-title cl-sm-12"><a href="/article/{{$article->id}}">{{$article->name}}</a></div>
        <div class="article-content col-sm-12">{!! \Illuminate\Support\Str::limit($article->description, 150, $end='...') !!}</div>
    </div>
    <div class="col-sm-4">
        <a href="/article/{{$article->id}}"><div class="article-image"><img src="{{$src}}"></div></a>
    </div>
</div>
