@extends('layouts.app')

@section('content')
<div class="w-4/6">
<x-post></x-post>
<tweet-likes ></tweet-likes>
</div>
    {{-- <div class="w-4/6">
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
                    <tweet-likes ></tweet-likes>
                    <div class="mt-2 flex items-center justify-start">
                        <form class="mr-2" action="{{route('like', $tweet->id)}}" method="post">
                            @csrf
                            
                            <button class="flex items-center justify-between px-4 py-2 border rounded-lg border-indigo-200 hover:bg-indigo-800 hover:text-white {{$tweet->isLikedBy(auth()->user()) ? 'bg-blue-400' : ''}}">
                                {{$tweet->isLikedBy(auth()->user()) ? 'Liked' : 'Like'}}
                             

                                <p>({{$tweet->likes ?: 0 }})</p>
                            </button>
                        </form>
                        <form class="mr-2" action="{{route('dislike', $tweet->id)}}" method="post">
                            @csrf
                            
                            <button class="flex items-center justify-between px-4 py-2 border rounded-lg border-indigo-200 hover:bg-indigo-800 hover:text-white {{$tweet->isDislikedBy(auth()->user()) ? 'bg-blue-400': ''}} ">
                                {{$tweet->isDislikedBy(auth()->user()) ? 'Disliked' : 'Dislike'}}
                             
                                <p>({{$tweet->dislikes ?: 0 }})</p>
                            </button>

                        </form>
                        <button class="px-4 py-2 border rounded-lg border-indigo-200 hover:bg-indigo-800 hover:text-white">Comment</button>
                        
                    </div>
                    
               
               </div>
            </div>
                
            @endforeach
                
            
            
        </div>
    </div> --}}
   
    
@endsection
