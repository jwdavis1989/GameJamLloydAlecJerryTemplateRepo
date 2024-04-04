event_inherited();
if (interacted && !animating){
    //Animate Opening
    alarm[0] = animation_timer;
	image_speed = 0.1;
    animating = true;
    audio_play_sound(snd_ruin_door_open, 2, 0)
}

