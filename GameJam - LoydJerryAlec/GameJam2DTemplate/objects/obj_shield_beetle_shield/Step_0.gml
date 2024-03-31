scale = (1 - (alarm[0]/lifetime));
image_xscale = scale;
image_yscale = scale;
if (instance_exists(nearest_beetle)) {
	x = nearest_beetle.x;
	y = nearest_beetle.y;
}
effect_create_depth(-1002, ef_ring, x, y, 0, c_blue);