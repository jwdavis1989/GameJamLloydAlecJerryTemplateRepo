/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_leviathan)) {
	x = obj_leviathan.x;
	y = obj_leviathan.y;
	image_xscale = obj_leviathan.image_xscale;
	image_yscale = obj_leviathan.image_yscale;
}
else {
	instance_destroy(self);	
}