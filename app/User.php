<?php

namespace App;

use App\Model\Common\Wishlist;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'username',
        'email',
        'firstname',
        'lastname',
        'job_title',
        'company',
        'mobile',
        'password',
        'image',
        'status'
    ];
    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    public function reviews()
    {
        return $this->hasMany('App\Model\Common\Review');
    }

    public function wishlists()
    {
        return $this->hasMany(Wishlist::class);
    }

    public function shipping()
    {
        return $this->hasOne('App\Model\Common\Shipping');
    }
}
