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
