if(image_index != 0){
	instance_create_layer(x, y, layer_get_id("Assets_Water"), obj_falling_water);
	effect_create_depth(-7, ef_firework, x, y, 0, c_blue); // TO-DO Make color more watery
}