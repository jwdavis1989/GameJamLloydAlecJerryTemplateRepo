/// @description Insert description here
// You can write your code in this editor
if(other.key_interact){
	if(obj_game_mode_controller.submarine_hp < obj_game_mode_controller.submarine_max_hp){ // Check if window is broken
		if(interact_timer == 0){
			if(obj_inventory.scrap_amount >= scrap_to_fix && obj_inventory.rivet_amount >= rivets_to_fix){
				if (image_index > 1) {
					image_index -= 1; // Set window to previous damage level
				}
				alarm[0] = random_range(20,60); // Reset timer
				obj_inventory.scrap_amount--;
				obj_inventory.rivet_amount -= 2;
				interact_timer = 5;
				audio_play_sound(snd_power_tool, 10, false, 0.6, 0.46);
				create_rising_message("Fixed", c_white, 38, objPlayer.x, 
				objPlayer.y - sprite_get_height(spr_character_idle) / 2, 1.2, 1.2);
				obj_game_mode_controller.submarine_hp += 25;
			}
			else {
				if(obj_inventory.scrap_amount < scrap_to_fix) {
					create_rising_message("Not Enough Scrap", c_white, 38, objPlayer.x, 
					objPlayer.y - sprite_get_height(spr_character_idle) / 2, 1.2, 1.2);
					interact_timer = 5;
				}
				else if(obj_inventory.rivet_amount < rivets_to_fix) {
					create_rising_message("Not Enough Rivets", c_white, 38, objPlayer.x, 
					objPlayer.y - sprite_get_height(spr_character_idle) / 2, 1.2, 1.2);
					interact_timer = 5;
				}
			}
		}
	}
}