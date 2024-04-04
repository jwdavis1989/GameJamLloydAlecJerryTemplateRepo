/// @description Picking up oxygen tanks
obj_inventory.oxygen_tanks++;
create_rising_message("Found Oxygen Tank", c_white, 38, objPlayer.x - sprite_get_width(spr_character_idle) / 2, 
	objPlayer.y - sprite_get_height(spr_character_idle) / 2, 1.2, 1.2);
instance_destroy();// Remove tank from level


/*
// CODE FOR DRAW EVENT FOR NEW PICK-UP BEHAVIOR
/// @description Draw interact key when player is close
draw_set_color(c_white);
draw_text(x + sprite_get_width(spr_oxygen_tank_submarine) / 2 - 15, 
	y - sprite_get_height(spr_oxygen_tank_submarine) / 2, "[V]");
draw_self();

*/