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