<template>
   <div>
        <div class="pt-2 mb-4 w-1/3 mx-auto relative text-gray-600">
            <input class="border-2 border-gray-900 bg-white h-10 w-full px-5 pr-16 rounded-lg text-sm focus:outline-none"
                type="search" name="search" placeholder="Search" v-model="search" @keyup="searchUser">
                <button type="submit" class="focus:outline-none absolute right-0 top-0 mt-5 mr-4">
                    <svg class="text-gray-600 h-4 w-4 fill-current" xmlns="http://www.w3.org/2000/svg"
                    xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px"
                    viewBox="0 0 56.966 56.966" style="enable-background:new 0 0 56.966 56.966;" xml:space="preserve"
                    width="512px" height="512px">
                    <path
                        d="M55.146,51.887L41.588,37.786c3.486-4.144,5.396-9.358,5.396-14.786c0-12.682-10.318-23-23-23s-23,10.318-23,23  s10.318,23,23,23c4.761,0,9.298-1.436,13.177-4.162l13.661,14.208c0.571,0.593,1.339,0.92,2.162,0.92  c0.779,0,1.518-0.297,2.079-0.837C56.255,54.982,56.293,53.08,55.146,51.887z M23.984,6c9.374,0,17,7.626,17,17s-7.626,17-17,17  s-17-7.626-17-17S14.61,6,23.984,6z" />
                    </svg>
                </button>
                
        </div>
   
            <div  v-if="users.length>0" class="w-full h-full border rounded-lg border-blue-400">
                <div  v-for="user in users" :key="user.id" class="flex m-4 shadow-sm py-4 items-center justify-between"> 
                    <div class="p-4 mr-2 flex items-center">
                        <img class="rounded-full" :src="'https://i.pravatar.cc/50?u=' + user.email"  alt="">
                        <div class="ml-4">
                            <a :href="'/user/'+user.id" id="name" class="font-bold mr-2">{{user.name}}</a>
                            <span class="text-sm">Joined: {{setDate(user.created_at)}} </span>
                        </div>
                                
                    </div>
                        <button v-if="user.following" @click="follow(user)" 
                        class="mr-4 font-bold px-4 py-2 text-white bg-green-600 rounded-lg focus:outline-none hover:bg-green-500">
                        Unfollow</button>
                        <button  v-else @click="follow(user)" 
                        class="mr-4 font-bold px-4 py-2 text-white bg-green-600 rounded-lg focus:outline-none hover:bg-green-500">
                        follow</button>
                </div>
            </div>
      
  
       

   </div>
</template>

<script>
    export default {
        
        data(){
            return{
                search: "",
                users: [],
                csrf: document.querySelector('meta[name="csrf-token"]').getAttribute('content'),
            }
        },
        methods:{
            setDate(date){
                return moment(date).startOf('hour').fromNow();
            },
            follow(user){

                axios.post('/user/'+user.id)
                .then((response)=>{
                    user.following=!user.following
                 
                    Event.$emit('newFollow', {user: user})
                    
                })
                .catch((error)=>{
                    console.log(error);
                })
                
            },
            searchUser(){
                const axios = require('axios').default;
                axios.post('explore',
                { data: this.search
                })
                
                .then((response)=>{
                    if (this.search.length>0) {
                        this.users = response.data
                    }else{
                        this.users=[]
                    }
                    
                })
                .catch(function(error){
                    console.log(error);
                })
            }
        },
        props: [],
       
     }
</script>
