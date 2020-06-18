<?php

namespace App\Http\Controllers;

use App\Notifications\newFollower;
use Illuminate\Http\Request;

use App\User;
class followController extends Controller
{
    /**
     * Handle the incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function __invoke(User $user)
    {
        auth()->user()->follow($user);
       
        return back();
    }
}
