if(other.key_interact){ // Player pressed interact key
	if(!open){ // Door isn't open
		if(other.keycards[level - 1]){ // Player has corresponding keycard
			open = true;
			image_index = 1; // Turn on green light
			audio_play_sound(snd_menu_ping, 10, false); // Play ding sound
			alarm[0] = 10; // Open after 10 seconds
			instance_destroy(blocker); // Allow player to pass through
		}
		else{
			show_message(string("You don't have the level {0} keycard.", level));
		}
	}
}
