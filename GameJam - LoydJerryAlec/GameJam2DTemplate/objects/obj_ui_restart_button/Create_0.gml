width = 150;
height = 50;
text = "RESTART"
//image_alpha = 0;
image_xscale = width/sprite_width
image_yscale = height/sprite_height
mouse_in = false;
draw = function(){
	//hafta redeclare for some reason
	var width = 150;
	var height = 50;
	var text = "RESTART"
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
}