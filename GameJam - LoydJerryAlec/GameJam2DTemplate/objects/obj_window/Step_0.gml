if(image_index != 0){
	instance_create_layer(x + 5, y, layer_get_id("Assets_Water"), obj_falling_water);
	instance_create_layer(x - 5, y, layer_get_id("Assets_Water"), obj_falling_water);
	effect_create_depth(-7, ef_firework, x, y, 0, c_teal); // TO-DO Make color more watery
}
if(interact_timer > 0){
	interact_timer--;
}