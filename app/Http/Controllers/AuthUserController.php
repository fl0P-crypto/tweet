<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Illuminate\Support\Facades\Auth;
class AuthUserController extends Controller
{
    // public function __construct()
    // {
    //     $this->middleware('auth:web');
    // }
    public function followers(){
      
          return response()->json(User::where('id', auth()->user()->id)->with('follows')->get());
      }
}
