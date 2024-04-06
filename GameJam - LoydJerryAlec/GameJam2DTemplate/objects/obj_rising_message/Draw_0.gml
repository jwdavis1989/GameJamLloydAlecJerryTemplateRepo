/// @description Draw message
draw_set_color(color);
draw_set_halign(fa_center);
draw_text_transformed(x, y, message_to_send, x_scale, y_scale, image_angle);
draw_set_halign(fa_left);