/// @description Picking up keycard
if(level > 0){
	obj_inventory.keycards[level - 1] = true; // Mark keycard as found
	create_rising_message(string("Found Level {0} keycard", level), c_white, 38, objPlayer.x - 
	sprite_get_width(spr_character_idle) / 2, objPlayer.y - sprite_get_height(spr_character_idle) / 2, 1.2, 1.2);
	audio_play_sound(snd_pickup_keycard, 10, false, 1, 0.56, random_range(0.8, 1.2)); // Play pickup sound
	instance_destroy(); // Remove keycard from level
}
else{
	show_message(string("Error: Level {0} keycard found", level));
}