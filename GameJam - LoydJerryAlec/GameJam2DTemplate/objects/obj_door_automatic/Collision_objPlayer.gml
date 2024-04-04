player_close = true;
open = true;
image_speed = 1; // Play opening animation
if(instance_exists(blocker)){
	instance_destroy(blocker); // Allow player to pass through
	audio_play_sound(snd_ruin_door_open, 10, false); // Play opening sound
}