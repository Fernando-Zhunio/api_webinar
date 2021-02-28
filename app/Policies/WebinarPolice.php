<?php

namespace App\Policies;

use App\User;
use App\webinar;
use Illuminate\Auth\Access\HandlesAuthorization;
use Illuminate\Support\Facades\Request;

class WebinarPolice
{
    use HandlesAuthorization;

    /**
     * Create a new policy instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    public function pass(User $user,webinar $webinar){

        // return false;
        return ($user->id === $webinar->user_id || $user->hasRole('admin'));
    }

    // public function delete(User $user,webinar $webinar){

    //     // return false;
    //     return ($user->id === $webinar->user_id || $user->hasRole('admin'));
    // }

    // public function create(){
    //     return true;
    // }
}
