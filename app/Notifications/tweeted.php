<?php

namespace App\Notifications;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Notification;

class tweeted extends Notification
{
    use Queueable;
    public $user;
    public $tweet;
    /**
     * Create a new notification instance.
     *
     * @return void
     */
    public function __construct($user, $tweet)
    {
        $this->user = $user;
        $this->tweet = $tweet;
    }

    /**
     * Get the notification's delivery channels.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function via($notifiable)
    {
    
        return ['database'];
    }


    public function toDatabase($notifiable)
    {
        
        return [
            'name'=> $this->user->name,
            'email'=>$this->user->email,
            'id'=>$this->user->id,
            'message'=> "has new tweet",
            'tweet'=>$this->tweet->body,
        ];
    }

   
}
