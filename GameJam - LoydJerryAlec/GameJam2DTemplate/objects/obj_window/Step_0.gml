if(image_index != 0){
	instance_create_layer(x, y, layer_get_id("Assets_Water"), obj_falling_water);
	effect_create_depth(-7, ef_firework, x, y, 0, c_blue); // TO-DO Make color more watery
}

/*
if(sprite_index == spr_window_cracked_1){
	instance_create_layer(x + 35, y + 25, layer_get_id("Assets_Water"), obj_falling_water);
}

if(sprite_index == spr_window_cracked_2){
	instance_create_layer(x + 35, y + 25, layer_get_id("Assets_Water"), obj_falling_water);
	instance_create_layer(x + 10, y + 20, layer_get_id("Assets_Water"), obj_falling_water);
}

if(sprite_index == spr_window_cracked_3){
	instance_create_layer(x + 35, y + 25, layer_get_id("Assets_Water"), obj_falling_water);
	instance_create_layer(x + 10, y + 20, layer_get_id("Assets_Water"), obj_falling_water);
	instance_create_layer(x + 20, y + 15, layer_get_id("Assets_Water"), obj_falling_water);
}
*/