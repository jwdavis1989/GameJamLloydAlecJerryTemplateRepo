player_close = true;
//NOTE: MAKE SURE PLAYER DOES NOT GET STUCK IN A DUNGEON
if(obj_game_mode_controller.phase != "Defense"){ // Do not open during defense phase
	open = true;
	image_speed = 1; // Play opening animation
	if(instance_exists(blocker)){
		instance_destroy(blocker); // Allow player to pass through
		object_play_3d_sound(snd_ruin_door_open);
		audio_play_sound(snd_ruin_door_open, 10, false); // Play opening sound
	}
}