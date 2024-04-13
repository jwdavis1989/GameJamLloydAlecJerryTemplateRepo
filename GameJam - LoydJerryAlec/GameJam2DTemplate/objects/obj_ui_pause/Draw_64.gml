/// @description Insert description here
// You can write your code in this editor
var screen_width = window_get_width()
var screen_height = window_get_height()
var anchorX = 0;
var anchorY = 0

if(keyboard_check(vk_escape) || pause){
	//menu box
	//draw_sprite_stretched(spr_pauseMenu9slc, 0, anchorX, anchorY, 420, 210)
	//if(volume_slider_music != -1) volume_slider_music.draw()
	//if(volume_slider != -1) volume_slider.draw()
	//Menu text
	draw_set_font(fGangWolfikBlade12)
	draw_text_transformed_color(anchorX + 16, anchorY + 8, // location
		string_hash_to_newline("Options") //text
		, 2.5, 2.5, 0 //x/yscale, angle
		, c_red, c_red, c_red, c_red, 1); //color
	//Volume text - must be after volume change
	draw_text_transformed_color(anchorX + 21, anchorY + 50, // location
		string_hash_to_newline("Effects: " + string(int64(volume*100))+"%") //text
		, 2, 2, 0 //x/yscale, angle
		, c_red, c_red, c_red, c_green, 1); //color
	draw_text_transformed_color(anchorX + 21, anchorY + 125, // location
		string_hash_to_newline("Music: " + string(int64(volume_music*100))+"%") //text
		, 2, 2, 0 //x/yscale, angle
		, c_red, c_red, c_red, c_green, 1); //color
	//PAUSE text
	draw_text_transformed_color(400, 400, // location
		string_hash_to_newline("PAUSED") //text
		, 4, 4, 0 //x/yscale, angle
		, c_red, c_red, c_red, c_red, 1); //color
}
//if(pause && (keyboard_check(vk_escape) || volume_slider_music.is_being_dragged 
//		|| volume_slider.is_being_dragged)){
//	//capture changes)
//	menuSurf = surface_create(420,210)
//	surface_set_target(menuSurf)
//	draw_surface(application_surface, 0, 0)
//	surface_reset_target()
//}