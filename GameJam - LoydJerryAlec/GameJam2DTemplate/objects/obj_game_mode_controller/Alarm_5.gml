/// @description Boss Approaching Finished
boss_approaching = false;
tentacles[0] = instance_create(spawn_tentacles_x[0] - 64, spawn_tentacles_y, obj_leviathan_tentacle);
tentacles[1] = instance_create(spawn_tentacles_x[1] + 64, spawn_tentacles_y, obj_leviathan_tentacle);
for (var i=0; i<array_length(tentacles);i++) {
	tentacles[i].image_xscale = tentacle_width;
	tentacles[i].image_yscale = tentacle_height;
}
tentacles[0].image_xscale = -tentacle_width;