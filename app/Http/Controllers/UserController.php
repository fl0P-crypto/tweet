<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;

class UserController extends Controller
{
    public function index(){
        $users=User::get()->except(auth()->user()->id);
        return view('user.users', compact('users'));
        
    }
    public function show(User $user){
        return view('user/userProfile')->with(['userTweets' => $user->timeline(), 'user' => $user ]);
        
    }
    public function search(Request $request){
        $search = $request->data;
        $users = User::where('name', 'like', '%'. $search . '%')->get()->except(auth()->user()->id);
        foreach ($users as $user) {
            if (auth()->user()->following($user)) {
                $user['following']=true;
            }else{
                $user['following']=false;
              
            }
        }
        return  json_encode($users);
        
    }
   
}
