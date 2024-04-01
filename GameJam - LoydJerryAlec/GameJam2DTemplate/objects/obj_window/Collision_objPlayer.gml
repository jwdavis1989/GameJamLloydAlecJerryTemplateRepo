if(other.key_interact){
	if(image_index != 0){ // Check if window is broken
		if(interact_timer == 0){
			if(obj_inventory.scrap_amount > 0){
				image_index = 0; // Set window to fixed
				alarm[0] = random_range(10,60); // Reset timer
				obj_inventory.scrap_amount--;
				interact_timer = 5;
			}else{
				create_rising_message("Not Enough Scrap", c_white, 38, objPlayer.x - sprite_get_width(spr_character_idle) / 2, 
				objPlayer.y - sprite_get_height(spr_character_idle) / 2, 1.2, 1.2);
				interact_timer = 5;
			}
		}
	}
}

/*
if(other.key_interact && image_index != 1){
	if(obj_inventory.scrap_amount > 0){
		image_index = 0; // Set window to fixed
		alarm[0] = random_range(10,60); // Reset timer
		obj_inventory.scrap_amount--;
	}else{
		create_rising_message("Not Enough Scrap", c_white, 38, objPlayer.x - sprite_get_width(spr_character_idle) / 2, 
		objPlayer.y - sprite_get_height(spr_character_idle) / 2, 1.2, 1.2);
	}
}
*/
