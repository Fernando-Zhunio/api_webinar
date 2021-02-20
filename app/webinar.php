<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Webinar extends Model
{
    protected $fillable = ['user_id','description','name','url_img','address','status','start'];

  

    public function user(){
        return $this->belongsTo(User::class);
    }

    public function coordinate(){
        return $this->belongsTo(Coordinate::class);
    }

    public function scopeSearch($query,$search){
        if(!empty($search)){
          return  $query->where('name','like','%'.$search.'%');
        }
    }
}
