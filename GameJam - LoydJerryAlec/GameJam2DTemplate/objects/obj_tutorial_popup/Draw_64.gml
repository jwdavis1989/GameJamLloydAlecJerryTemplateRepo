/// @description Insert description here
// You can write your code in this editor
if(show){
	var anchorX = display_get_width()/5;
	var anchorY = display_get_height()/3;
	draw_set_color(color);
	draw_set_halign(fa_center);
	//draw_set_font(font_)
	draw_text_transformed(anchorX, anchorY,
	message_to_show// + " " + string(anchorX) + " " + string(anchorY)
	, x_scale, y_scale, image_angle);
	draw_set_halign(fa_left);
}