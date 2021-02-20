<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Image extends Model
{
    public $fillable=['name'];
    public function article()
    {
        return $this->belongsTo(Article::class,'article_id');
    }
}
