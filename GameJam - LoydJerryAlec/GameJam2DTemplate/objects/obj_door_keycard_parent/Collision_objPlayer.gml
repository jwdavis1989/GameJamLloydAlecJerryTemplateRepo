if(other.key_interact && interact_timer == 0){ // Player pressed interact key
	if(!open){ // Door isn't open
		if(obj_inventory.keycards[level - 1]){ // Player has corresponding keycard
			open = true;
			image_index = 1; // Turn on green light
			object_play_3d_sound(snd_menu_ping);
			//audio_play_sound(snd_menu_ping, 10, false); // Play ding sound
			alarm[0] = 10; // Open after 10 seconds
		}
		else{
			object_play_3d_sound(snd_error);
			//audio_play_sound(snd_error, 10, false); // Play error sound
			interact_timer = 5;
			create_rising_message(string("Need Level {0} keycard", level), c_white, 38, objPlayer.x - 
			sprite_get_width(spr_character_idle) / 2, objPlayer.y - sprite_get_height(spr_character_idle) / 2, 1.2, 1.2);
		}
	}
}