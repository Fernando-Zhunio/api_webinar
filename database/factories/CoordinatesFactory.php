<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Coordinate;
use App\Model;
use Faker\Generator as Faker;

$factory->define(Coordinate::class, function (Faker $faker) {
    return [
        'latitude'=>$faker->latitude(-5,1),
        'longitude'=>$faker->longitude(-80,-75)
    ];
});
