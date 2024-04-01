/// @description Refill Oxygen
if(other.key_interact){
	other.oxygen_missing = 0; // Reset oxygen
	create_rising_message("Oxygen Refilled", c_white, 38, objPlayer.x - sprite_get_width(spr_character_idle) / 2, 
	objPlayer.y - sprite_get_height(spr_character_idle) / 2, 1.2, 1.2);
}