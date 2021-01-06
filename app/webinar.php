<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class webinar extends Model
{
    protected $fillable = ['user_id','description','name','url_img','address','status','start'];


    public function user(){
        return $this->belongsTo(User::class);
    }
}
