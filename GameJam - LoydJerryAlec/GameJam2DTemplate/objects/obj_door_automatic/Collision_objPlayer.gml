player_close = true;
open = true;
image_speed = 1; // Play opening animation
if(instance_exists(blocker)){
	instance_destroy(blocker); // Allow player to pass through
	object_play_3d_sound(snd_ruin_door_open);
	// audio_play_sound(snd_ruin_door_open, 10, false); // Play opening sound
}