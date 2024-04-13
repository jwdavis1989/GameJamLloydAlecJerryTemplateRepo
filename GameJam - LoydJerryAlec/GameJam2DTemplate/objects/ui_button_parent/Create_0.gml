width = 150;
height = 50;
text_scale = 2;
text = "RESTART";
hoverColor = c_green;
noHoverColor = c_red;
//image_alpha = 0;
image_xscale = width/sprite_width
image_yscale = height/sprite_height
mouse_in = false;
sprite_9s = spr_pauseMenu9slc
/// @function                draw = function(_width, _height, _text)
/// @description             changeable draw function
/// @param {Real}     _width    the width of the button
/// @param {Real}     _height    the width of the button
/// @param {Any}     _text    the width of the button
draw = function(_width, _height, _text){
	var text_scale = 2
	//hafta redeclare for some reason
	draw_self()
	draw_sprite_stretched(sprite_9s, 0, x, y, _width, _height)
	if(mouse_in){
		draw_text_transformed_color(x+(_width/10), y+(_height/4), // location
			string_hash_to_newline(_text) //text
			, text_scale, text_scale, 0 //x/yscale, angle
			, hoverColor, hoverColor, hoverColor, hoverColor, 1); //color
	}else{
			draw_text_transformed_color(x+(_width/10), y+(_height/4), // location
			string_hash_to_newline(_text) //text
			, text_scale, text_scale, 0 //x/yscale, angle
			, noHoverColor, noHoverColor, noHoverColor, noHoverColor, 1); //color
	}
}
onclick = function(){
	action_restart_game();
	room_goto(rmCentralHub);
	objPlayer.x = 300
	objPlayer.y = 615
}
