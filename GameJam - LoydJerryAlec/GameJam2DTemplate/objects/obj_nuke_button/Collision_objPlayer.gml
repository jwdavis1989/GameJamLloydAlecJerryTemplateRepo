/// @description Display message & interaction
if(message == noone){
	message = create_static_message("[E] Launch Nuke", c_white, x, 
	y - sprite_get_height(spr_nuke_button) / 2 - 10, 1, 1);
}
if(other.key_interact){
	obj_nuke.image_speed = 1;
	obj_nuke.launched = true;
	camera_set_view_target(view_camera[0], obj_nuke);
	camera_set_view_speed(view_camera[0], -1, -1);
	objNightVisionCamera.visible = false;
	get_fucked = instance_create(obj_game_mode_controller.room_center_x, 352, obj_leviathan);
	get_fucked.visible = true;
	//get_fucked.depth = 111;
	get_fucked.depth = 109;
	get_fucked.image_xscale = 10;
	get_fucked.image_yscale = 10;
	obj_game_mode_controller.crack.visible = false;
}