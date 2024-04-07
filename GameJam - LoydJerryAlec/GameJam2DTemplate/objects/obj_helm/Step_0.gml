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
		message = create_static_message_at_depth("[E] Choose Destination", c_white, x, 
		y - sprite_get_height(spr_helm) / 2 - 10, 1, 1, -1001);
	}
	else if (obj_game_mode_controller.phase == "Repair" && message == noone) {
		message = create_static_message_at_depth("[E] Fight the Beast", c_red, x, 
		y - sprite_get_height(spr_helm) / 2 - 10, 1, 1, -1001);
	}
}