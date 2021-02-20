<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Article extends Model
{
    public $fillable=['name','description'];

    public function tags(){
        return $this->belongsToMany(Tag::class, 'articles_tags', 'article_id', 'tag_id');
    }

    public function images(){
        return $this->hasMany(Image::class,'article_id');
    }
    public function user()
    {
        return $this->belongsTo(User::class,'user_id');
    }
}
