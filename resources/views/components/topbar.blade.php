<div>
    <nav class="shadow mb-8 py-6">
        <div class="container mx-auto px-6 md:px-0">
            <div class="flex items-center justify-between">
                <div class="mr-6">
                    <a href="{{route('tweet.index')}}">
                        <img src="https://img.icons8.com/android/96/000000/twitter.png"/>
                    </a>
                </div>
                <div class="">
                    @guest
                        <a class="no-underline hover:underline text-gray-900 text-sm p-3" href="{{ route('login') }}">{{ __('Login') }}</a>
                        @if (Route::has('register'))
                            <a class="no-underline hover:underline text-gray-900 text-sm p-3" href="{{ route('register') }}">{{ __('Register') }}</a>
                        @endif
                    @endguest
                    @auth
                        <user-dropdown logout-route="{{route('logout')}}" 
                        :name={{json_encode(auth()->user()->name) }}
                        :id={{json_encode(auth()->user()->id)}}
                        :email={{json_encode(auth()->user()->email)}}
                        ></user-dropdown>
   
                    @endauth
      
                   
                </div>
            </div>
        </div>
    </nav>
</div>