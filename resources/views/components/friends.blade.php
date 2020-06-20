{{-- <div class="w-1/6">
    <div class="items-center">
        <h1 class=" font-bold text-xl mb-4 mx-2">Friends</h1>
        @foreach (auth()->user()->follows as $user)
        <div class="flex items-center mb-2">
            <img class="rounded-full mx-2" src="https://i.pravatar.cc/50?u={{$user->email}}" alt="">
            <a href="{{route('userProfile',$user->id)}}" class="font-bold">{{$user->name}}</a>
        </div>
        @endforeach
      
    </div>
</div>  --}}
<user-followers></user-followers>

