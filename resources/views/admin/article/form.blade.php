@extends('layouts.app')

@section('content')
    <div class="">
        <div class="row justify-content-center">
            <div class="col-md-10">
                <div class="card">
                    <div class="card-header">{{ __('Article') }}</div>

                    <div class="card-body">
                        <?php
                        if (isset($article)) {
                            $action = '../update/' . $article->id;
                        } else {
                            $action = 'store';
                        }
                        ?>
                        <form id="article-from" method="post" action="{{$action}}" enctype="multipart/form-data">
                            {{csrf_field()}}
                            <div class="form-group row">
                                <label for="name"
                                       class="col-md-2 col-form-label text-md-right">{{ __('Article Title') }}</label>

                                <div class="col-md-10">
                                    <input id="name" type="text"
                                           class="form-control @error('name') is-invalid @enderror" name="name"
                                           @if(isset($article)) value="{{$article->name}}" @endif
                                           autocomplete="name" autofocus required minlength="3" maxlength="250">

                                    @error('name')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="image"
                                       class="col-md-2 col-form-label text-md-right">{{ __('Article Images') }}</label>

                                <div class="col-md-10">
                                    <input id="image" type="file"
                                           class="form-control @error('image') is-invalid @enderror" name="image[]"
                                           autofocus multiple="multiple">

                                    @error('image')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                    @if(isset($article->images))
                                        <div class="article-images">
                                            @foreach($article->images as $image)
                                                <div class="image-container" id="image-{{$image->id}}">
                                                    <a class="fancybox" href="{{URL::asset('uploads/images/').'/'.$image->name}}"><img src="{{URL::asset('uploads/images/').'/'.$image->name}}" width="100"
                                                         height="100"></a>
                                                    <div class="image-close" onclick="removeImage({{$image->id}})" title="Remove Image"><i class="fa fa-close"></i></div>
                                                </div>
                                            @endforeach
                                        </div>
                                    @endif
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="tag_name" class="col-md-2 col-form-label text-md-right">{{ __('Article Tags') }}</label>

                                <div class="col-md-10">
                                    <input id="tag_name" type="text" placeholder="Search Tags by name.." class="form-control @error('tag_name') is-invalid @enderror" name="tag_name">
                                    <div class="tag-names">
                                        @if(isset($article) && $article->tags)
                                            <?php $tag_ids= ""; ?>
                                            @foreach($article->tags as $tag)
                                                <?php $tag_ids .= $tag->id . ","; ?>
                                                <div id="tag_{{$tag->id}}" class='tag-term'>&nbsp;{{$tag->name}}<i class='fa fa-close' style='cursor: pointer;' onclick='removeId("{{$tag->id}}","tag")'></i></div>
                                            @endforeach
                                        @endif
                                    </div>
                                    <input id="tag" type="hidden" class="form-control @error('tag') is-invalid @enderror" name="tag" @if(isset($tag_ids)) value="{{$tag_ids}}" @endif>
                                    @error('tag')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="description"
                                       class="col-md-2 col-form-label text-md-right">{{ __('Article Content') }}</label>

                                <div class="col-md-10">
                                    <textarea id="description" class="form-control @error('description') is-invalid @enderror"
                                              name="description"
                                              autofocus required="required">@if(isset($article)) {{$article->description}} @endif </textarea>

                                    @error('description')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                    @enderror
                                </div>
                            </div>
                            <div class="form-group row mb-0">
                                <div class="col-md-10 offset-md-2">
                                    <button type="submit" class="btn btn-primary">
                                        {{ __('Save') }}
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection