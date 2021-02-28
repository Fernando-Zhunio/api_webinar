<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        
        $this->call(RolesAndPermissionSeeder::class);
        factory(App\User::class, 20)->create();
        factory(App\Webinar::class, 50)->create();
    }
}
