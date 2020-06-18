<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
class notificationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('notifications.notifications');
    }
   

}
