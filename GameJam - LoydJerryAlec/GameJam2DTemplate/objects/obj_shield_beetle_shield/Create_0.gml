image_speed = 1;
lifetime = 30;
alarm[0] = lifetime;
depth = -1001;
scale = 0.1;
image_xscale = scale;
image_yscale = scale;
nearest_beetle = noone;
if (instance_exists(instance_nearest(x, y, USETHISONE_obj_shield_beetle))) {
	nearest_beetle = instance_nearest(x, y, USETHISONE_obj_shield_beetle);
}