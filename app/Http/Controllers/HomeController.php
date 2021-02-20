<?php

namespace App\Http\Controllers;

use App\Article;

use App\Tag;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {

    }

    /**
     * Show the application home.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $articles = Article::orderBy('id', 'DESC')->paginate(10);
        $trending = Article::all()->take(6);
        $tags = Tag::all()->take(10);
        return view('home', compact('articles', 'trending', 'tags'));
    }
}
