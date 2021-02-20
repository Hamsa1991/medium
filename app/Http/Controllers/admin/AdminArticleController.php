<?php

namespace App\Http\Controllers\admin;

use App\Article;
use App\Tag;
use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\File;
use Validator;
use App\Image;

class AdminArticleController extends Controller
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
     * Display a listing of the article.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $articles = Article::orderBy('id', 'DESC')->paginate(10);
        return view('admin/article.index', compact('articles'));
    }

    /**
     * Show the form for creating a new article.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin/article.form');
    }

    /**
     * Store a newly created article in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //validate values
        $this->validate($request, [
            'name' => 'required|min:3|max:250',
            'description' => 'required',
            'image.*' => 'image|mimes:jpeg,png,jpg,gif,svg,JPEG,PNG,JPG,GIF,SVG|max:3072',
            'tag' => 'required',
        ]);

        //create article model
        $article = new Article();
        $article->name = $request->name;
        $article->description = $request->description;
        $article->user_id = Auth::id();
        //save values
        if ($article->save()) {
            //save tags
            if ($request->tag) {
                $ids = explode(',', $request->tag);
                $removed = array_pop($ids);
                $tags = Tag::whereIn('id', $ids)->get();
                foreach ($tags as $tag) {
                    $article->tags()->attach($tag);
                }
            }

            //save images
            if ($request->hasFile("image")) {
                foreach ($request->file('image') as $file) {
                    $destinationPath = 'uploads/images';
                    //give the file a unique name
                    $imageName = md5($file->getClientOriginalName() . time()) . '.' . $file->getClientOriginalExtension();
                    $file->move($destinationPath, $imageName);
                    $image = new Image();
                    $image->name = $imageName;
                    $image->save();
                    $article->images()->save($image);

                }
            }
        }

        return redirect('admin');
    }

    /**
     * Display the specified article.
     *
     * @param  \App\Article $article
     * @return \Illuminate\Http\Response
     */
    public function show(Article $article)
    {
        $more_articles = Article::where("id", "<>", $article->id)->get()->take(4);
        return view('articles.show', compact('article', 'more_articles'));
    }

    /**
     * Show the form for editing the specified article.
     *
     * @param  \App\Article $article
     * @return \Illuminate\Http\Response
     */
    public function edit(Article $article)
    {
        return view('admin.article.form', compact('article'));
    }

    /**
     * Update the specified article in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  \App\Article $article
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Article $article)
    {
        //validate values
        $this->validate($request, [
            'name' => 'required|min:3|max:250',
            'description' => 'required',
            'image.*' => 'image|mimes:jpeg,png,jpg,gif,svg,JPEG,PNG,JPG,GIF,SVG|max:3072',
            'tag' => 'required',
        ]);

        $article->update($request->all());
        //save tags
        if ($request->tag) {
            $ids = explode(',', $request->tag);
            $removed = array_pop($ids);
            //remove old tags
            foreach ($article->tags as $tag) {
                $article->tags()->detach($tag);
            }
            $tags = Tag::whereIn('id', $ids)->get();
            //save new tags
            foreach ($tags as $tag) {
                $article->tags()->attach($tag);
            }
        }
        //save images
        if ($request->hasFile("image")) {
            foreach ($request->file('image') as $file) {
                $destinationPath = 'uploads/images';
                //give the file a unique name
                $imageName = md5($file->getClientOriginalName() . time()) . '.' . $file->getClientOriginalExtension();
                $file->move($destinationPath, $imageName);
                $image = new Image();
                $image->name = $imageName;
                $image->save();
                $article->images()->save($image);
            }
        }
        return redirect('admin');
    }

    /**
     * Remove the specified article from storage.
     *
     * @param  \App\Article $article
     * @return \Illuminate\Http\Response
     */
    public function destroy(Article $article)
    {
        //delete tags
        if (count($article->tags)) {
            foreach ($article->tags as $tag) {
                $article->tags()->detach($tag);
            }
        }
        //delete images
        if (count($article->images)) {
            foreach ($article->images as $image) {
                File::delete('uploads/images/' . $image->name);
                $image->delete();
            }
        }
        $article->delete();
        return redirect('admin');
    }

    /**
     * Destroy the specified image
     *
     * @param Image $image
     * @throws \Exception
     */
    public function destroyImage(Image $image)
    {
        //delete image file
        if ($image) {
            File::delete('uploads/images/' . $image->name);
            //delete image
            $image->delete();
        }
    }

    /**
     * Search tags by name
     *
     * @param $search
     * @return \Illuminate\Http\JsonResponse
     */
    public function tag($search)
    {
        return response()->json(Tag::where('name', 'like', $search . '%')->get());
    }
}
