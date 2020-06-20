<?php

namespace App\Http\Controllers;

use App\Like;
use App\tweet;
use Illuminate\Http\Request;

class LikeController extends Controller
{
    public function like(tweet $tweet)
    {
        $tweet->like(auth()->user());

        return back();
    }
    public function dislike(tweet $tweet)
    {
        $tweet->dislike(auth()->user());
        return back();
        
    }

}
