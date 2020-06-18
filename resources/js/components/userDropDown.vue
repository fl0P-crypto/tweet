<template>
    <div class="relative">
         <button @click="isOpen=!isOpen" class="relative block focus:outline-none  rounded-full overflow-hidden w-10 h-10  z-20">
            <img :src="'https://i.pravatar.cc/40?u=' + email" alt="image" >
        </button>
       
        <button v-if="isOpen" @click="isOpen=false" class="bg-gray-100 fixed inset-0 h-full w-full opacity-0 cursor-default"></button>
        <div v-if="isOpen" class="z-10 bg-white w-48 absolute my-2 py-2 right-0 rounded-lg shadow-xl">
            <a :href="'/user/' + id" class="w-full block px-4 py-2 hover:bg-blue-400 font-bold hover:text-white">{{name}}</a>
            
             
            <form :action="logoutRoute" method="POST">
                <input type="hidden" name="_token" :value="csrf">
                <a class="w-full block px-4 py-2 hover:bg-blue-400  hover:text-white cursor-pointer">
                   <button class="font-bold focus:outline-none w-full h-full flex justify-start">Log out</button> 
                </a>
            </form>
      
            
        </div>
    </div>
</template>

<script>
    export default {
        data(){
            return{
                isOpen:false,
                
                csrf: document.querySelector('meta[name="csrf-token"]').getAttribute('content'),
            }
        },
        props: ['logoutRoute', 'name', 'id', 'email' ],
       
     }
</script>
