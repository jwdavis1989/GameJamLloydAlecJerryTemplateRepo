/// @description Picking up oxygen tanks
obj_inventory.oxygen_tanks++;
create_rising_message("Found Oxygen Tank", c_white, 38, objPlayer.x - sprite_get_width(spr_character_idle) / 2, 
	objPlayer.y - sprite_get_height(spr_character_idle) / 2, 1.2, 1.2);
instance_destroy();// Remove tank from level