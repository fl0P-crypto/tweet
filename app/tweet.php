<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class tweet extends Model
{
    use Likable;

    protected $guarded = [];
    public function user(){
        return $this->belongsTo('App\User');
    }
   
    
}
