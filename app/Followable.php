<?php

namespace App;

use App\Notifications\newFollower;
trait Followable
{
    public function follows()
    {
        return $this->belongsToMany(User::class, 'follows', 'user_id', 'following_user_id');
    }
    public function follower()
    {
        return $this->belongsToMany(User::class, 'follows',  'following_user_id', 'user_id');
    }
   
    public function follow($user){
        if (auth()->user()->following($user)){
            return $this->follows()->detach($user);
        }else{
            return $this->follows()->save($user);
            $user->notify(new newFollower(auth()->user()));
        }
    }
    public function following($user){
        return $this->follows()->where('following_user_id', $user->id)->exists();
    }
    public function followers(){
      
        return $this->follower()->where('following_user_id', $this->id)->get();
    }
}