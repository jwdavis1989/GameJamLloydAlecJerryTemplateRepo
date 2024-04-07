/// @description Insert description here
// You can write your code in this editor
if (visible) {
	if(image_index == 1 + offset){ // Spawn water every 2 steps
		if(alarm[1] == -1){
			alarm[1] = 2;
		}
	}else if(image_index == 2 + offset){ // Spawn water every other step
		if(alarm[1] == -1){
			alarm[1] = 1;
		}
	}else if (image_index == 3 + offset){ // Spawn water every step
		instance_create_layer(x + 5, y, layer_get_id("Assets_Water"), obj_falling_water);
		instance_create_layer(x - 5, y, layer_get_id("Assets_Water"), obj_falling_water);
		effect_create_depth(-7, ef_firework, x, y, 0, c_teal);
	}


	/* ORIGINAL
	if(image_index != 0){
		instance_create_layer(x + 5, y, layer_get_id("Assets_Water"), obj_falling_water);
		instance_create_layer(x - 5, y, layer_get_id("Assets_Water"), obj_falling_water);
		effect_create_depth(-7, ef_firework, x, y, 0, c_teal); // TO-DO Make color more watery
	}
	*/
	if(interact_timer > 0){
		interact_timer--;
	}
}