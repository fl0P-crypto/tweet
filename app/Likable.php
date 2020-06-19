<?php

namespace App;

use Illuminate\Database\Eloquent\Builder;

trait Likable
{
    public function scopeWithLikes(Builder $query){
        $query->leftJoinSub(
            'SELECT tweet_id, sum(liked) likes, sum(!liked) dislikes FROM likes GROUP BY tweet_id',
            'likes',
            'likes.tweet_id',
            'tweets.id'
        );

    }

    public function isLikedBy( $user){
        return (bool) $user->likes
            ->Where('tweet_id', $this->id)
            ->where('liked', true)->count();
    }
    public function isDislikedBy( $user){
        return (bool) $user->likes
            ->Where('tweet_id', $this->id)
            ->where('liked', false)->count();
    }
    public function like($user = null, $liked = true){
        return $this->likes()->updateOrCreate(
            ['user_id' => $user ? $user->id : auth()->user()->id],
            ['liked' => $liked]
        );
    }
    public function dislike($user = null){
        return $this->like($user, false);
    }
    public function likes()
    {
        return $this->hasMany(Like::class);
    }
}

?>