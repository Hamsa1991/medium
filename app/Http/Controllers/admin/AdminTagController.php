<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Tag;
use Illuminate\Http\Request;

class AdminTagController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }
    /**
     * Display a listing of the tag.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $tags = Tag::orderBy('id', 'DESC')->paginate(10);
        return view('admin/tag.index', compact('tags'));
    }
    /**
     * Show the form for creating a new tag.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin/tag.form');
    }

    /**
     * Store a newly created tag in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //create Tag model
        $tag = new Tag();
        $tag->name = $request->name;
        //save values
        $tag->save();
        return redirect('/admin/tag');
    }

    /**
     * Store a newly created tag in storage.
     *
     * @param $name
     * @return \Illuminate\Http\JsonResponse
     */
    public function storeAjax($name)
    {
        $tag = new Tag();
        $tag->name = $name;
        $tag->save();
        return  response()->json($tag);
    }

    /**
     * Display the specified tag.
     *
     * @param  \App\Tag  $tag
     * @return \Illuminate\Http\Response
     */
    public function show(Tag $tag)
    {
        //
    }

    /**
     * Show the form for editing the specified tag.
     *
     * @param  \App\Tag  $tag
     * @return \Illuminate\Http\Response
     */
    public function edit(Tag $tag)
    {
        return view('admin.Tag.form', compact('tag'));
    }

    /**
     * Update the specified tag in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Tag  $tag
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Tag $tag)
    {
        $tag->update($request->all());
        return redirect('/admin/tag');
    }

    /**
     * Remove the specified tag from storage.
     *
     * @param  \App\Tag  $tag
     * @return \Illuminate\Http\Response
     */
    public function destroy(Tag $tag)
    {
        //delete attached articles
        if(count($tag->articles)){
            foreach ($tag->articles as $article) {
                $tag->articles()->detach($article);
            }
        }
        $tag->delete();
        return redirect('/admin/tag');
    }
    
}
