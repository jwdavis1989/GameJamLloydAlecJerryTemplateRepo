if(key_interact && other.sprite_index != spr_window){
	other.sprite_index = spr_window; // Set window to fixed
	other.alarm[0] = random_range(10,60); // Reset timer
}