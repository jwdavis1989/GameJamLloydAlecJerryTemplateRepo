/// @description Draw Boss and Sub Healthbars
draw_text_colour(64, camera_get_view_y(0) + 32, "LEVIATHAN", c_red, c_red, c_red, c_red, 1);
var boss_percentage = wave_remaining / wave_remaining_max;
draw_text_colour(64, camera_get_view_y(0) + 50, string(round(boss_percentage * 100)) +" %", c_red, c_red, c_red, c_red, 1);
for(var i = 0; i < 100 * (boss_percentage); i++){
	draw_text_colour(64 + (i * 3), camera_get_view_y(0) + 68, "I  ", c_red, c_red, c_red, c_red, 1);
}