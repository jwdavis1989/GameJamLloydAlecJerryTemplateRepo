if(!open && other.key_interact && other.keycards[0]){
	open = true;
	image_index = 1; // Turn on green light
	audio_play_sound(snd_menu_ping, 10, false); // play sound
	alarm[0] = 10; // open after 10 seconds
}