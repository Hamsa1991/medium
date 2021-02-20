<?php
/**
 * Created by PhpStorm.
 * User: hamsa
 * Date: 19/02/2021
 * Time: 12:07 ص
 */ ?>
@extends('layouts.app')

@section('content')
    <div class="">
        <div class="row justify-content-center">
            <div class="col-md-10">
                <div class="card">
                    <div class="card-header">{{ __('Tag') }}</div>

                    <div class="card-body">
                        <?php
                        if (isset($tag)) {
                            $action = '../update/' . $tag->id;
                        } else {
                            $action = 'store';
                        }
                        ?>
                        <form class="" method="post" action="{{$action}}" enctype="multipart/form-data">
                            {{csrf_field()}}
                            <div class="form-group row">
                                <label for="name"
                                       class="col-md-2 col-form-label text-md-right">{{ __('Tag Title') }}</label>

                                <div class="col-md-10">
                                    <input id="name" type="text"
                                           class="form-control @error('name') is-invalid @enderror" name="name"
                                           @if(isset($tag)) value="{{$tag->name}}" @endif required
                                           autocomplete="name" autofocus>

                                    @error('name')
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
