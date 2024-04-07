/// @description Draw Boss and Sub Healthbars
if (phase = "Defense") {
	//Boss HP Bar
	draw_text_colour(64, camera_get_view_y(0) + 32, "LEVIATHAN", c_red, c_red, c_red, c_red, 1);
	var boss_percentage = wave_remaining / wave_remaining_max;
	draw_text_colour(64, camera_get_view_y(0) + 50, string(round(boss_percentage * 100)) +" %", c_red, c_red, c_red, c_red, 1);
	for(var i = 0; i < 100 * (boss_percentage); i++){
		draw_text_colour(64 + (i * 3), camera_get_view_y(0) + 68, "I  ", c_red, c_red, c_red, c_red, 1);
	}
}
	//Submarine HP Bar
if (room_get_name(room) == "rmCentralHub") {
	draw_text_colour(500, objUIAmmoController.anchorY - 15, "SUBMARINE", c_blue, c_blue, c_blue, c_blue, 1);
	var submarine_hp_percentage = submarine_hp / submarine_max_hp;
	draw_text_colour(500, objUIAmmoController.anchorY, string(round(submarine_hp_percentage * 100)) +" %", c_blue, c_blue, c_blue, c_blue, 1)
	for(var i = 0; i < 100 * (submarine_hp_percentage); i++){
		draw_text_colour(540 + (i * 3), objUIAmmoController.anchorY, "I  ", c_blue, c_blue, c_blue, c_blue, 1);
	}
}