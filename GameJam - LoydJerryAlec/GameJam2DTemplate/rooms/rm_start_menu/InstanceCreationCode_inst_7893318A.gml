onclick = function(){
	var lay_id = layer_get_id("Background");
	var back_id = layer_background_get_id(lay_id);
	layer_background_sprite(back_id, spr_title_screen_background);
	room_goto(rmCentralHub)
}
text = "Start"
var lay_id = layer_get_id("Background");
var back_id = layer_background_get_id(lay_id);
layer_background_speed(back_id, 0.0);

draw = function(_width, _height, _text){
    //hafta redeclare for some reason
    draw_self()
    draw_sprite_stretched(sprite_9s, 0, x, y, _width, _height)
    if(mouse_in){
        draw_text_transformed_color(x+(_width/10) + 14, y+(_height/4) - 8, // location
            string_hash_to_newline(_text) //text
            , text_scale, text_scale, 0 //x/yscale, angle
            , hoverColor, hoverColor, hoverColor, hoverColor, 1); //color
    }else{
            draw_text_transformed_color(x+(_width/10) + 14, y+(_height/4) - 8, // location
            string_hash_to_newline(_text) //text
            , text_scale, text_scale, 0 //x/yscale, angle
            , noHoverColor, noHoverColor, noHoverColor, noHoverColor, 1); //color
    }
}