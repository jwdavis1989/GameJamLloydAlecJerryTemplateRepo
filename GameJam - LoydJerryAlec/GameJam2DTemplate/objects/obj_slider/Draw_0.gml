/// @description draw knob
//draw_sprite(sprite_index, image_index, x ,y);
draw_self()
var threshold = x + (0.05 * sprite_width)
var knob_amount = amount_current / amount_max;
var knob_x = threshold + (0.9*sprite_width * knob_amount);
draw_sprite(knob_sprite, 0, knob_x,y); //, knob_width, knob_height)