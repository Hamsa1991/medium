@extends('layouts.app')

@section('content')


    <div class="">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <div style="float: left;">{{ __('Tags') }}</div>
                        <div style="float: right"><a href="/tag/create">New tag</a></div>
                    </div>

                    <div class="card-body">
                        <table class="table">
                            <th>Title</th>
                            <th></th>
                            <th></th>
                            @if($tags)
                                @foreach($tags as $tag)
                                    <tr>
                                        <td>{{$tag->name}}</td>
                                        <td width="30"><a href="/tag/edit/{{$tag->id}}"><i class="fa-lg fa fa-edit"></i></a>
                                        </td>
                                        <td width="30"><a onclick="return confirm('Do you want to delete this tag?')"
                                                          href="/tag/destroy/{{$tag->id}}"><i
                                                        class="fa-lg fa fa-trash-o"></i></a></td>
                                    </tr>
                                @endforeach
                            @else
                                <tr>
                                    <td>No Data</td>
                                </tr>
                            @endif
                        </table>
                    </div>
                    {{$tags->links()}}
                </div>
            </div>
        </div>
    </div>

@stop