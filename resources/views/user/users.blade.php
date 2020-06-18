@extends('layouts.app')
@section('content')
    <div class="w-full h-full">
        <search-users></search-users>
 
        <div class="w-full h-full border rounded-lg border-blue-400" id="allUsers">
            @foreach ($users as $user) 
                <div class="flex m-4 shadow-sm py-4 items-center justify-between">
                    <div class="p-4 mr-2 flex items-center">
                        <img class="rounded-full" src="https://i.pravatar.cc/50?u={{$user->email}}" alt="">
                        <div class="ml-4">
                            <a href="" class="font-bold mr-2">{{$user->name}}</a>
                            <span class="text-sm">Joined: {{$user->created_at->diffforhumans()}}</span>
                        </div>
                        
                    </div>
                    <div>
                        @if (auth()->user()->following($user))
                            <form action="{{route('followUser', $user->id)}}" method="post">
                                @csrf
                                <button class="mr-4 font-bold px-4 py-2 text-white bg-green-600 rounded-lg focus:outline-none hover:bg-green-500">Unfollow</button>
                            </form>
                            @else
                            <form action="{{route('followUser', $user->id)}}" method="post">
                                @csrf
                                <button class="mr-4 font-bold px-4 py-2 text-white bg-green-600 rounded-lg focus:outline-none hover:bg-green-500">Follow</button>
                            </form>
                        @endif
                    </div>
                    
                </div>
            @endforeach
        </div>
    </div>
   
@endsection