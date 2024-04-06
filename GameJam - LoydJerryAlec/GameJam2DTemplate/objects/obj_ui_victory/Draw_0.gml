/// @description
gpu_set_blendenable(false)
surface_set_target(application_surface);
if(surface_exists(gameoverSurf))
	draw_surface( gameoverSurf,anchorX,anchorY);
else{
	gameoverSurf = surface_create(resW,resH);
	buffer_set_surface(gameoverSurfBuffer,gameoverSurf,0)
}
if(surface_exists(menuSurf))
	draw_surface( menuSurf,0,0);
surface_reset_target()
gpu_set_blendenable(true)
draw_self()
restart_button.draw()
	//PAUSE text
var screen_width = window_get_width()
var screen_height = window_get_height()
draw_text_transformed_color(anchorX + screen_width/2-122, anchorY + screen_height/5, // location
	string_hash_to_newline("VICTORY") //text
	, 4, 4, 0 //x/yscale, angle
	, c_green, c_green, c_green, c_green, 1); //color