/// @description Insert description here
// You can write your code in this editor
if(obj_inventory.current_keycards > 2){
	draw_self()
	depth = 10000
	draw_text_transformed_color(x, y, // location
	string_hash_to_newline("?") //text
	, 3, 3, 0 //x/yscale, angle
	, c_red, c_red, c_red, c_red, 1); //color
}