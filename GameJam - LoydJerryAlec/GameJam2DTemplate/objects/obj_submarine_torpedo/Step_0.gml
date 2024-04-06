/// @description Insert description here
if (left_side && x > x_anchor[0]) {
	instance_create(x, y, objExplosion);
	instance_destroy(self);	
}
else if (!left_side && x < x_anchor[1]) {
	instance_create(x, y, objExplosion);
	instance_destroy(self);	
}
image_xscale -= distance_shrink_rate;
image_yscale -= distance_shrink_rate;