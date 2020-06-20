<template>
    
        <div class="w-full h-full border rounded-lg border-blue-400">
            <div v-for="tweet in tweets" :key="tweet.id" class="flex m-4 shadow-sm py-4">
                <div class="p-4 mr-2">
                    <img class="rounded-full" :src="'https://i.pravatar.cc/50?u=' + tweet.user.email" alt="">
                </div>
                <div class="flex-1">
                    <div class="flex">
                        <a :href="'/user/'+tweet.user.id" class="font-bold mr-2">{{tweet.user.name}}</a>
                        <span class="text-sm">{{setDate(tweet.created_at)}}</span>
                    </div>
                    <div class="mt-4">
                        <p>
                           {{tweet.body}}
                        </p>
                    </div>
                  <div class="mt-2 flex items-center justify-start">

                        <button @click="like(tweet)" class="flex items-center justify-between px-4 py-2 border rounded-lg border-indigo-200 hover:bg-indigo-800 hover:text-white" :class="{'bg-blue-500' :tweet.liked}">
                            <p v-if="tweet.liked" >Liked</p>
                            <p v-else>Like</p>
                            <p>({{tweet.likes ? tweet.likes:0}})</p>

                        </button>
                 

                        <button @click="dislike(tweet)" class="flex items-center justify-between px-4 py-2 border rounded-lg border-indigo-200 hover:bg-indigo-800 hover:text-white" :class="{'bg-blue-500' :tweet.disliked}" >
                          
                            <p v-if="tweet.disliked" >Disliked</p>
                            <p v-else>Dislike</p>
                             <p>({{tweet.dislikes ? tweet.dislikes:0}})</p>
                               
                        </button>

                   
                        <button class="px-4 py-2 border rounded-lg border-indigo-200 hover:bg-indigo-800 hover:text-white">Comment</button>
                        
                    </div> 
                    
               
                </div>
            </div>
                
            
                
            
            
        </div>
   
    
</template>

<script>
export default {
    data(){
        return{
            tweets: [],

        }
    },
    methods:{
        setDate(date){
                return moment(date).startOf('hour').fromNow();
            },
        like(tweet){
            axios.post('tweet/'+tweet.id+"/like")
            .then((response)=>{
                if (!tweet.liked) {
                    tweet.likes++
                    tweet.liked=true
                    if(tweet.disliked){
                        tweet.dislikes--
                    }
                    tweet.disliked=false
                }
              
            })
            .catch((error)=>{
                console.log(error)
            })
        },
        dislike(tweet){
            axios.post('tweet/'+tweet.id+"/dislike")
            .then((response)=>{
                if (!tweet.disliked) {
                    tweet.dislikes++
                    tweet.disliked=true
                    if(tweet.liked){
                        tweet.likes--
                    }
                    tweet.liked=false
                }
           
            })
            .catch((error)=>{
                console.log(error)
            })
        }
        
    },
    created(){

        axios.get("/tweet/likes")
        .then((response)=>{
            this.tweets = response.data
        })
    }

}
</script>

<style>

</style>