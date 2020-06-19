<?php

use Illuminate\Routing\Route as RoutingRoute;
use Illuminate\Support\Facades\Route;
use App\User;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::middleware('auth')->group(function () {
    Route::get('/notifications', 'notificationController@index');
    Route::get('/tweet', 'tweetController@index')->name('tweet.index');
    Route::post('/tweet', 'tweetController@store')->name('tweet.store');
    Route::get('explore', 'UserController@index')->name('users');
    Route::POST('explore', 'UserController@search')->name('searchUsers');
    Route::get('/user/{user}', 'UserController@show')->name('userProfile');
    Route::post('/user/{user}', 'followController')->name('followUser');
    route::post('tweet/{tweet}/like', 'Likecontroller@like')->name('like');
    route::post('tweet/{tweet}/dislike', 'Likecontroller@dislike')->name('dislike');
    });
