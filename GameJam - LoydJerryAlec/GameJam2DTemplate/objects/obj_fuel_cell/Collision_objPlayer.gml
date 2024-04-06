/// @description Picking up fuel cells
if(message == noone){
	message = create_static_message("[V] Pick-Up", c_white, x - sprite_get_width(spr_fuel_cell) / 2 + 2, 
	y - sprite_get_height(spr_fuel_cell) / 2 - 10, 1, 1);
}

if(objPlayer.key_pickup && other.fuel_cell_interact_timer <= 0){
	obj_inventory.fuel_cells++;
	create_rising_message("Found Fuel Cell", c_white, 38, objPlayer.x - sprite_get_width(spr_character_idle) / 2, 
		objPlayer.y - sprite_get_height(spr_character_idle) / 2, 1.2, 1.2);
	other.fuel_cell_interact_timer = 5;
	instance_destroy(message);
	other.movespeed = 6; // Slow player down while carrying cell
	instance_destroy();// Remove cell from level
}


/*
obj_inventory.oxygen_tanks++;
create_rising_message("Found Oxygen Tank", c_white, 38, objPlayer.x - sprite_get_width(spr_character_idle) / 2, 
	objPlayer.y - sprite_get_height(spr_character_idle) / 2, 1.2, 1.2);
instance_destroy();// Remove tank from level
*/


/*
// CODE FOR DRAW EVENT FOR NEW PICK-UP BEHAVIOR
/// @description Draw interact key when player is close
draw_set_color(c_white);
draw_text(x + sprite_get_width(spr_oxygen_tank_submarine) / 2 - 15, 
	y - sprite_get_height(spr_oxygen_tank_submarine) / 2, "[V]");
draw_self();

*/