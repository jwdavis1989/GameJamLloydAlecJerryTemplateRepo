/// @description anchors, ui
	var anchorX = __view_get( e__VW.XView, 0 );
	var anchorY = view_yview[0];
	var screen_width = display_get_width()
	var screen_height = display_get_height()

if(keyboard_check(vk_escape) || pause){
	//menu box
	draw_sprite_stretched(spr_pauseMenu9slc, 0, anchorX+16, anchorY+32, 420, 210)
	if(volume_slider_music != -1) volume_slider_music.draw()
	if(volume_slider) volume_slider.draw()
	//Menu text
	draw_set_font(fGangWolfikBlade12)
	draw_text_transformed_color(anchorX + 32, anchorY + 32, // location
		string_hash_to_newline("Options") //text
		, 2.5, 2.5, 0 //x/yscale, angle
		, c_red, c_red, c_red, c_red, 1); //color
	//Volume text - must be after volume change
	draw_text_transformed_color(anchorX + 42, anchorY + 75, // location
		string_hash_to_newline("Effects: " + string(int64(volume*100))+"%") //text
		, 2, 2, 0 //x/yscale, angle
		, c_red, c_red, c_red, c_green, 1); //color
	draw_text_transformed_color(anchorX + 42, anchorY + 150, // location
		string_hash_to_newline("Music: " + string(int64(volume_music*100))+"%") //text
		, 2, 2, 0 //x/yscale, angle
		, c_red, c_red, c_red, c_green, 1); //color
	//PAUSE text
	draw_text_transformed_color(anchorX + screen_width/6, anchorY + screen_height/4, // location
		string_hash_to_newline("PAUSED") //text
		, 4, 4, 0 //x/yscale, angle
		, c_red, c_red, c_red, c_red, 1); //color
}
if(pause && (keyboard_check(vk_escape) || volume_slider_music.is_being_dragged 
		|| volume_slider.is_being_dragged)){
//if(pause && volume_slider != -1 && volume_slider.is_being_dragged){
	//capture changes
	//pauseSurf = surface_create(resW,resH);
	//surface_set_target(pauseSurf)
	//draw_surface(application_surface, 0, 0)
	//surface_reset_target()
	
	menuSurf = surface_create(resW/3,resH/3-12)
	surface_set_target(menuSurf)
	draw_surface(application_surface, 0, 0)
	surface_reset_target()
}