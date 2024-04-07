/// @description init
depth = obj_submarine.depth + 1
if(obj_inventory.current_keycards > 0){
	instance_destroy(self)
}
image_alpha = 0;
width = 112;
height = 40;
text_scale = 1;
text = "Facility ";
hoverColor = c_green;
noHoverColor = c_red;
//image_alpha = 0;
image_xscale = width/sprite_width
image_yscale = height/sprite_height
mouse_in = false;
sprite_9s = spr_pauseMenu9slc
dungeon = 1; //1 for rmDungeon3, 2 for rm_lloyd_dungeon

/// @function                draw = function(_width, _height, _text)
/// @description             changeable draw function
/// @param {Real}     _width    the width of the button
/// @param {Real}     _height    the width of the button
/// @param {Any}     _text    the width of the button
draw = function(_width, _height, _text){
	_text = _text + string(dungeon)
	//hafta redeclare for some reason
	draw_self()
	//draw_sprite_stretched(sprite_9s, 0, x, y, _width, _height)
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
	obj_submarine.selected_dungeon = dungeon
	obj_inventory.last_dungeon = dungeon
	//if(dungeon = 1){
	//	room_goto(rmDungeon3);
	//	objPlayer.x = 350
	//	objPlayer.y = 1050
	//}else{
	//	objPlayer.x = 192;
	//	objPlayer.y = 512;
	//	room_goto(rm_lloyd_dungeon);
	//}
}