<div class="border border-blue-400 rounded-lg w-full h-75 ">
    <form class="p-4" action="{{route('tweet.store')}}" method="POSt">
        @csrf
        <textarea class="w-full resize-none p-4" name="body" placeholder="Enter text here!"></textarea>
        <div class="flex justify-between w-full  items-center px-4 pt-4">
    
            <img class="rounded-full" src="https://i.pravatar.cc/50?u={{auth()->user()->email}}" alt="">
             
            <button class="bg-blue-500 rounded-lg py-2 px-4 text-white">Tweet</button>

        </div>
        
    </form>
  
    
</div>