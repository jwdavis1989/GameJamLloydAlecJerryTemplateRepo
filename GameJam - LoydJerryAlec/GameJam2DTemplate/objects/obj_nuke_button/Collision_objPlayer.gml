/// @description Display message & interaction
if(message == noone){
	message = create_static_message("[E] Launch Nuke", c_white, x, 
	y - sprite_get_height(spr_nuke_button) / 2 - 10, 1, 1);
}
if(other.key_interact){
	obj_nuke.image_speed = 1;
}