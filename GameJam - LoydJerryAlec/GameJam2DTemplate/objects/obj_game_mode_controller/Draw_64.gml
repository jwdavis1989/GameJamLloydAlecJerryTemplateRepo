/// @description Draw Boss and Sub Healthbars
if (phase = "Defense" && wave_began) {
	//Boss HP Bar
	draw_text_colour(64, camera_get_view_y(0) + 32, "LEVIATHAN", c_red, c_red, c_red, c_red, 1);
	var boss_percentage = wave_remaining / wave_remaining_max;
	draw_text_colour(64, camera_get_view_y(0) + 50, string(round(boss_percentage * 100)) +" %", c_red, c_red, c_red, c_red, 1);
	for(var i = 0; i < 100 * (boss_percentage); i++){
		draw_text_colour(64 + (i * 3), camera_get_view_y(0) + 68, "I  ", c_red, c_red, c_red, c_red, 1);
	}
}
else if (phase = "Gather"){
	//Gather Timer Bar
	draw_text_colour(64, camera_get_view_y(0) + 32, "GATHER TIME LEFT [Press [Q] to Evacuate]", c_red, c_red, c_red, c_red, 1);
	var gather_timer_percentage = gather_timer / gather_timer_max;
	draw_text_colour(64, camera_get_view_y(0) + 50, string(round(gather_timer_percentage * 100)) +" %", c_red, c_red, c_red, c_red, 1);
	for(var i = 0; i < 100 * (gather_timer_percentage); i++){
		draw_text_colour(64 + (i * 3), camera_get_view_y(0) + 68, "I  ", c_red, c_red, c_red, c_red, 1);
	}
	if (room_get_name(room) != "rmCentralHub") {
		draw_text_colour(room_center_x, camera_get_view_y(0) + 32, "[Press [Q] to Evacuate]", c_aqua, c_aqua, c_aqua, c_aqua, 1);
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