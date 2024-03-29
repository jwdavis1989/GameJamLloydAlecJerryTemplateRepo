/// @description Insert description here
// You can write your code in this editor
nearest_shield_beetle = instance_nearest(x, y, USETHISONE_obj_shield_beetle);
if (instance_exists(nearest_shield_beetle)) {
	x = nearest_shield_beetle.x;
	y = nearest_shield_beetle.y;
	image_xscale = nearest_shield_beetle.image_xscale;
	image_index = nearest_shield_beetle.image_index;
}
else {
	instance_destroy(self);	
}