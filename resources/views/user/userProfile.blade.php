@extends('layouts.app')
@section('content')
    <div class="flex-1">
        <div class="border border-blck-400 rounded-lg w-full h-75 relative">
           <img class="w-full rounded-lg " src="/imgs/2.jpg" alt="">
           <img style="left: 50%" class="absolute bottom-0 transform  -translate-x-1/2 translate-y-6 rounded-full" src="https://i.pravatar.cc/150?u={{$user->email}}" alt="">
           <div class="flex justify-between items-center mt-4">
               <p class="font-bold text-lg">{{$user->name}}</p>
               @if (auth()->user()->id != $user->id)
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
                   
               @else
               <button class="mr-4 font-bold px-4 py-2 text-white bg-gray-600 rounded-lg focus:outline-none hover:bg-gray-500">Seetings</button>
               @endif
              
              
               

           </div>
        </div>
        
        @foreach ($userTweets as $tweet)

            <div class="flex mt-8 shadow-sm py-4">
                <div class="p-4 mr-2">
                    <img class="rounded-full" src="https://i.pravatar.cc/50?u={{$user->email}}" alt="">
                </div>
                <div class="flex-1">
                    <div class="flex">
                        <p class="font-bold mr-2">{{$user->name}}</p>
                        <span class="text-sm">{{$tweet->created_at->diffforhumans()}}.</span>
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
    
@endsection