<?php

namespace App\Http\Controllers;

use App\Tag;

class TagController extends Controller
{
    /**
     * Display a listing of the tag.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $tags = Tag::all();
        return view("tags.index", compact("tags"));
    }

    /**
     * Display Articles of the tag
     *
     * @param Tag $tag
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function articles(Tag $tag){
        $articles = $tag->articles;
        return view('tags.articles', compact('tag','articles'));
    }
}
