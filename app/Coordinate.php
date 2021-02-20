<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Coordinate extends Model
{
    public $fillable = ['longitude','latitude'];
    public $timestamps = false;
}
