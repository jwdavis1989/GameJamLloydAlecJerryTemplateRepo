image_speed = 0.1;
depth = -1001;
nearest_shield_beetle = noone;
if (instance_exists(USETHISONE_obj_shield_beetle)) {
	nearest_shield_beetle = instance_nearest(x, y, USETHISONE_obj_shield_beetle);
	image_xscale = nearest_shield_beetle.image_xscale;
	image_yscale = nearest_shield_beetle.image_yscale;
}