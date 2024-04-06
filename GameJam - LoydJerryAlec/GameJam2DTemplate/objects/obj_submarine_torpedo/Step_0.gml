/// @description Insert description here
if (left_side && x > x_anchor[0]) {
	explosion = instance_create(x, y, objExplosion);
	explosion.image_xscale = explosion_scale;
	explosion.image_yscale = explosion_scale;
	instance_destroy(self);	
}
else if (!left_side && x < x_anchor[1]) {
	explosion = instance_create(x, y, objExplosion);
	explosion.image_xscale = explosion_scale;
	explosion.image_yscale = explosion_scale;
	instance_destroy(self);	
}
image_xscale -= distance_shrink_rate;
image_yscale -= distance_shrink_rate;