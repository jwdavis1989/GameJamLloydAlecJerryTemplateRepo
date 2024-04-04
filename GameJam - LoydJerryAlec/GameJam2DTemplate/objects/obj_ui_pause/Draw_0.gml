/// @description anchors, ui
	var anchorX = __view_get( e__VW.XView, 0 );
	var anchorY = view_yview[0];
	var screen_width = display_get_width()
	var screen_height = display_get_height()
if(keyboard_check(vk_down) && pause && alarm[1]<0){
	alarm[1]=5; // 5 frames between volume change
	//set volume
	if(volume>0){
		volume = volume - 0.05
	}
	audio_group_set_gain(audiogroup_default,volume,0)
}
if(keyboard_check(vk_up) && pause && alarm[1]<0){
	alarm[1]=5; // 5 frames between volume change
	//set volume
	if(volume<2){
		volume = volume + 0.05
	}
	audio_group_set_gain(audiogroup_default,volume,0)
}
if(keyboard_check(vk_escape) || pause){
	//menu box
	draw_sprite_stretched(spr_pauseMenu9slc, 0, anchorX+16, anchorY+32, 420, 210)
	//Menu text
	draw_set_font(fGangWolfikBlade12)
	draw_text_transformed_color(anchorX + 32, anchorY + 32, // location
		string_hash_to_newline("Options") //text
		, 2.5, 2.5, 0 //x/yscale, angle
		, c_red, c_red, c_red, c_red, 1); //color
	//Volume text - must be after volume change
	draw_text_transformed_color(anchorX + 64, anchorY + 128, // location
		string_hash_to_newline("Volume: " + string(int64(volume*100))+"%") //text
		, 2, 2, 0 //x/yscale, angle
		, c_red, c_red, c_red, c_green, 1); //color
	//PAUSE text
	draw_text_transformed_color(anchorX + screen_width/6, anchorY + screen_height/4, // location
		string_hash_to_newline("PAUSED") //text
		, 4, 4, 0 //x/yscale, angle
		, c_red, c_red, c_red, c_red, 1); //color
}
if(pause && (keyboard_check(vk_up) || keyboard_check(vk_down))){
	//capture changes
	//pauseSurf = surface_create(resW,resH);
	//surface_set_target(pauseSurf)
	//draw_surface(application_surface, 0, 0)
	//surface_reset_target()
	
	menuSurf = surface_create(resW/2,resH/2)
	surface_set_target(menuSurf)
	draw_surface(application_surface, 0, 0)
	surface_reset_target()
}