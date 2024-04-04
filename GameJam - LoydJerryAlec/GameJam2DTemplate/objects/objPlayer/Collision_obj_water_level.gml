draw_set_color(c_blue);

// OXYGEN METER TEST
if(!underwater && y - sprite_height / 2 > other.y){ // Player's head is below water
	underwater = true;
	audio_play_sound(snd_splash, 10, false, 0.7, 0.05); // Play splash sound
	breathing_sound = audio_play_sound(snd_underwater_breathing, 10, true, 0.6, 1); // Play breathing sound
	
}else if(underwater && y < other.y){ // Player's midpoint is  above water
	underwater = false;
	audio_stop_sound(breathing_sound); // Stop breathing sound
	audio_stop_sound(drowning_sound);
}