/// @description Insert description here
width = 3
height = 3
knob_height = 2
knob_width = 2
image_xscale = width;
image_yscale = height;

slide_sprite = spr_ui_slider
knob_sprite = spr_ui_slider_knob

cursor = cr_none;
amount_max = 100;
amount_current = 50;
is_being_dragged = false;

draw = function(){
	var width = 3;
	var height = 3;
	//draw_self()
	
	draw_sprite_stretched_ext(sprite_index, 0, x, y-14, sprite_width, sprite_height, c_aqua, 1)
	var threshold = x + (0.05 * sprite_width);
	var slideWidth = 0.9 * sprite_width;
	var knob_amount = amount_current / amount_max;
	var knob_x = threshold + (slideWidth * knob_amount);
	draw_sprite(knob_sprite, 0, knob_x,y); //, knob_width, knob_height)
}