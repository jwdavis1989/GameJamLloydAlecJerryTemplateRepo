/// @description Refill Oxygen
if(other.key_interact){
	other.oxygen_missing = 0; // Reset oxygen
	create_rising_message("Oxygen Refilled", c_white, 38, objPlayer.x - sprite_get_width(spr_character_idle) / 2, 
	objPlayer.y - sprite_get_height(spr_character_idle) / 2, 1.2, 1.2);
	audio_play_sound(snd_oxygen_tank_release, 10, false, 0.6);
	if(audio_is_playing(other.drowning_sound)){ // If player is drowning
		audio_stop_sound(other.drowning_sound);
		other.breathing_sound = audio_play_sound(snd_underwater_breathing, 10, true, 0.6, 1);
	}
}