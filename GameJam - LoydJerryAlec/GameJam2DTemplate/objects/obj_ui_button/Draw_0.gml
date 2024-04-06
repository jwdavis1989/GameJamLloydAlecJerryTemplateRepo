/// @description Insert description here
// You can write your code in this editor
draw_self()
draw_sprite_stretched(spr_pauseMenu9slc, 0, x, y, width, height)
if(mouse_in){
	draw_text_transformed_color(x+(width/10), y+(height/4), // location
		string_hash_to_newline(text) //text
		, 2, 2, 0 //x/yscale, angle
		, c_green, c_green, c_green, c_green, 1); //color
}else{
		draw_text_transformed_color(x+(width/10), y+(height/4), // location
		string_hash_to_newline(text) //text
		, 2, 2, 0 //x/yscale, angle
		, c_red, c_red, c_red, c_red, 1); //color
}