<?php

namespace App\Http\Controllers;

use App\tweet;
use Illuminate\Http\Request;
use App\User;
use App\Notifications\tweeted;
//use Illuminate\Notifications\Notification;
use Notification;

class TweetController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $tweets = tweet::latest()->get();
      
        return view('tweet')->with('tweets', $tweets);
    }
   

   

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data= $request->validate(['body' =>'required']);
        $data['user_id']=auth()->user()->id;
        $tweet = tweet::create($data );
    
    
        $users = auth()->user()->followers();
       
        Notification::send($users, new tweeted(auth()->user(),$tweet));
        
        return back();
    }

    
}
