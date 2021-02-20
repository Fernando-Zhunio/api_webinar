<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\User;
use App\Webinar;
use Faker\Generator as Faker;
use Illuminate\Support\Carbon;

$factory->define(Webinar::class, function (Faker $faker) {
    $day_add = rand(1,60);
    $day_add_for_end = rand(1,30);
    $date = Carbon::now()->addDay($day_add);
    $date_end = $date->addDay($day_add_for_end);
    return [
            'user_id' => User::all()->random()->id,
            'description' => $faker->text(240),
            'name' => $faker->sentence(random_int(2,8), true) ,
            'url_img' => 'default_webinar_'.random_int(1,2),
            'address' => $faker->address,
            'status'  => rand(0,1) == 1,
            // 'start' => $faker->dateTime(now()+15,  null),
            'start' => $date,
            // 'end' => $faker->dateTime(now()+15,  null),
            'end' => $date_end,
            'coordinate_id' => factory(App\Coordinate::class) 

    ];
});
