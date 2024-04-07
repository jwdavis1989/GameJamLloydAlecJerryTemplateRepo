/// @description Delete message if player isn't near
/*
if(!place_meeting(x, y, objPlayer)){
	instance_destroy(message);
	message = noone;
}
*/

if(interact_timer > 0){
	interact_timer--;
}

if (instance_exists(objPlayer)) {
	if(obj_game_mode_controller.phase == "Gather" && message == noone){
		message = create_static_message_at_depth("[E] Move to Next Facility", c_white, x, 
		y - sprite_get_height(spr_helm) / 2 - 10, 1, 1, -1001);
	}
	else if (obj_game_mode_controller.phase == "Repair") {
		instance_destroy(message);
		message = noone;
		message = create_static_message_at_depth("[E] on window to repair, then when ready, [E] on helm to begin next phase.", c_red, x, 
		y - sprite_get_height(spr_helm) / 2 - 10, 1, 1, -1001);
	}
	else if (obj_game_mode_controller.phase == "Defense") {
		instance_destroy(message);
		message = noone;
	}
}