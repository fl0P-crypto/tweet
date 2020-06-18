@extends('layouts.app')

@section('content')
    <div class="w-4/6">
        <x-post></x-post>
        <div class="w-full h-full border rounded-lg border-blue-400">
            @foreach ($tweets as $tweet)
            <div class="flex m-4 shadow-sm py-4">
                <div class="p-4 mr-2">
                    <img class="rounded-full" src="https://i.pravatar.cc/50?u={{$tweet->user->email}}" alt="">
                </div>
                <div class="flex-1">
                    <div class="flex">
                        <a href="{{route('userProfile',$tweet->user->id)}}" class="font-bold mr-2">{{$tweet->user->name}}</a>
                        <span class="text-sm">{{$tweet->created_at->diffforhumans()}}</span>
                    </div>
                    <div class="mt-4">
                        <p>
                            {{$tweet->body}}
                        </p>
                    </div>
                    <div class="mt-2">
                        <button class="px-4 py-2 border rounded-lg border-indigo-200 hover:bg-indigo-800 hover:text-white">Like</button>
                        <button class="px-4 py-2 border rounded-lg border-indigo-200 hover:bg-indigo-800 hover:text-white">Comment</button>
                    </div>
                    
        
                </div>
            </div>
                
            @endforeach
                
            
            
        </div>
    </div>
   
    
@endsection
