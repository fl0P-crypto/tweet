@extends('layouts.app')
@section('content')

<div class="flex-1">
    <h1 class="mb-4 text-lg font-bold flex justify-center">Notifications</h1>
    <div class="w-full h-auto border rounded-lg border-blue-400" >
       
        @foreach (auth()->user()->Notifications as $notification)
     
        <div class="flex m-4 shadow-sm items-center justify-between">
            <div class="p-4 mr-2 flex items-center">
                <img class="rounded-full" src="https://i.pravatar.cc/50?u={{$notification->data['email']}}" alt="">
                <div class="ml-4">
                    <a href="/user/{{$notification->data['id']}}" class="font-bold mr-2">{{$notification->data['name']}}</a>
               
                </div>
                @if ($notification->type!='App\Notifications\newFollower')
                    <p>Has new tweet: {{$notification->data['tweet']}}</p>
                @else
                   <p>Started following you</p>
                @endif
               
            </div>
           
            
        </div>
          
      @endforeach
    </div>  

</div>
        


@endsection