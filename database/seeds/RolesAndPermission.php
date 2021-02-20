<?php

use App\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class RolesAndPermissionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Permisos
        User::create([
            'name' => 'Fernando Zhunio Reyes',
            'email' => 'fzhunio91@hotmail.com',
            'password' => Hash::make('fernando1991'),
            'url_img' => 'default_profile_user'
        ]);
        Permission::create(['name' => 'webinar_editar','guard_name'=>'api']);
        Permission::create(['name' => 'webinar_crear','guard_name'=>'api']);
        Permission::create(['name' => 'webinar_eliminar','guard_name'=>'api']);
        Permission::create(['name' => 'webinar_aprobar','guard_name'=>'api']);
        // Roles
        $admin = Role::create(['name' => 'admin','guard_name'=>'api']);
        $organizador = Role::create(['name' => 'organizador','guard_name'=>'api']);
        $usuario = Role::create(['name' => 'usuario','guard_name'=>'api']);

        $admin->givePermissionTo([
            'webinar_editar',
            'webinar_crear',
            'webinar_eliminar',
            'webinar_aprobar',

        ]);
        $organizador->givePermissionTo([
        'webinar_crear','webinar_editar'
        ]);
    }
}
