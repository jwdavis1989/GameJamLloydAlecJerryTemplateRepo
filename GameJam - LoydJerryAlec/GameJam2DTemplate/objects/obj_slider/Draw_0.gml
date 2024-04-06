/// @description Insert description here
// You can write your code in this editor
//draw_sprite(sprite_index, image_index, x ,y);
draw_self()
var knob_amount = amount_current / amount_max;
var knob_x = x + (sprite_width * knob_amount);
draw_sprite(knob_sprite, 0, knob_x,y); //, knob_width, knob_height)