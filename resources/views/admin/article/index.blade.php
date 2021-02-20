@extends('layouts.app')

@section('content')


    <div class="">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <div  style="float: left;">{{ __('Articles') }}</div>
                        <div style="float: right"><a href="/article/create">New Article</a></div>
                    </div>

                    <div class="card-body">
                        <table class="table">
                            <th>Title</th>
                            <th></th>
                            <th></th>
                            @if($articles)
                                @foreach($articles as $article)
                                    <tr>
                                        <td>{{$article->name}}</td>
                                        <td width="30"><a href="article/edit/{{$article->id}}"><i class="fa-lg fa fa-edit"></i></a></td>
                                        <td width="30"><a onclick="return confirm('Do you want to delete this Article?')" href="/article/destroy/{{$article->id}}"><i class="fa-lg fa fa-trash-o"></i></a></td>
                                    </tr>
                                @endforeach
                            @else
                                <tr>
                                    <td>No Data</td>
                                </tr>
                            @endif
                        </table>
                    </div>
                    {{$articles->links()}}
                </div>
            </div>
        </div>
    </div>

@stop