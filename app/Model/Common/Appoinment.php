<?php

namespace App\Model\Common;

use Illuminate\Database\Eloquent\Model;

class Appoinment extends Model
{
    
    protected $fillable = [
        "id",
        "name",
        "phone",
        "mail",
        "categoryable_id",
        "category_id",
        "doctor_id",
        "date",
        "time",
        "updated_at"
        "created_by",
        
    ];
    

}
