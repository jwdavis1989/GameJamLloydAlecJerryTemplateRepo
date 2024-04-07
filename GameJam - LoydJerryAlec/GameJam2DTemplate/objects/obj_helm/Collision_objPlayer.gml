/// @description Display message & interaction
/*
if(obj_game_mode_controller.phase != "Defense" && message == noone){
	message = create_static_message("[E] Choose Destination", c_white, x - sprite_get_width(spr_helm) - 12, 
	y - sprite_get_height(spr_helm) / 2 - 10, 1, 1);
}
*/
if(other.key_interact && interact_timer == 0){
	interact_timer = 5;
	if (obj_game_mode_controller.phase == "Gather") {
		objPlayer.control_locked = true;
		room_goto(rm_map);
	}
	else if (obj_game_mode_controller.phase == "Repair") {
		obj_game_mode_controller.repair_timer = 0;
	}
}