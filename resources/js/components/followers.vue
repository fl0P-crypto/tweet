<template>
  <div class="w-1/6">
    <div class="items-center">
        <h1 class=" font-bold text-xl mb-4 mx-2">Following</h1>
        
        <div  v-for="user in follows" :key="user.id" class="flex items-center mb-2">
            <img class="rounded-full mx-2" :src="'https://i.pravatar.cc/50?u=' + user.email" alt="">
            <a :href="'/user/'+ user.id" class="font-bold">{{user.name}}</a>
        </div>
        
      
    </div>
</div>
</template>

<script>
export default {
     data(){
            return{
                follows: [],
            }
        },
    created (){
        axios.get('/user/followers')
        .then((response)=>{
            this.follows = response.data[0].follows
            Event.$on('newFollow', (user)=> {
               if (user.user.following) {
                    this.follows.push(user.user)
               } else {
                   this.follows.pop(user.user)
               }
               
            })
        })
        .catch((error)=>{
            console.log(error)
        })
    }
    
}
</script>

<style>

</style>