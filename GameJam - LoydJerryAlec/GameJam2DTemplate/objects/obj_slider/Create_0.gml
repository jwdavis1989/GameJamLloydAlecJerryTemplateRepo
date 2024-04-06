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
	draw_self()	
	var knob_amount = amount_current / amount_max;
	var knob_x = x + (sprite_width * knob_amount);
	draw_sprite(knob_sprite, 0, knob_x,y);
}