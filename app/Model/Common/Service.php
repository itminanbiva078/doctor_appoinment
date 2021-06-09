<?php

namespace App\Model\Common;

use Illuminate\Database\Eloquent\Model;

class Service extends Model
{
    protected $fillable = [
        "id",
        "title",
        
        "description",
        "image",
        "slug",
        "views",
        "seo_title",
        "meta_key",
        "meta_description",
        "created_by",
        "modified_by",
        "status"
    ];
    protected $table = "services";

    public function scopePublished($query)
    {
        return $query->where('status', 1);
    }

    public function categories()
    {
        return $this->morphToMany("App\Model\Common\Category", "categoryable");
    }

    public function tags()
    {
        return $this->morphToMany("App\Model\Common\Tag", "taggable");
    }

    public function user()
    {
        return $this->belongsTo("App\User", "created_by");
    }
}
