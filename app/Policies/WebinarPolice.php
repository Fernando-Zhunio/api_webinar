<?php

namespace App\Policies;

use App\User;
use App\webinar;
use Illuminate\Auth\Access\HandlesAuthorization;

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

        return ($user->id === $webinar->user_id || $user->hasRole('admin'));
    }
}
