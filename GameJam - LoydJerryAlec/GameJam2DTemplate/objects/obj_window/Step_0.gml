
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