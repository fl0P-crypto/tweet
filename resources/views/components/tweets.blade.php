<div class="w-full h-full border rounded-lg border-blue-400">
    @foreach ($tweets as $tweet)
    <div class="flex m-4 shadow-sm py-4">
        <div class="p-4 mr-2">
            <img class="rounded-full" src="https://i.pravatar.cc/50u=3" alt="">
        </div>
        <div class="flex-1">
            <div class="flex">
                <a href="{{route('userprofile'$tweet->user->id)}}" class="font-bold mr-2">{{$tweet->user->name}}</a>
                <span class="text-sm">1hr.</span>
            </div>
            <div class="mt-4">
                <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Eligendi dignissimos dolores delectus ullam iste cum fuga, vitae dolor autem repellendus. Rerum harum dolor, officia voluptatibus explicabo cupiditate quam laborum ad?
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