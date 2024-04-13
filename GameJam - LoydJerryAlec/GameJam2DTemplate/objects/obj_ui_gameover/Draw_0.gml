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

//draw_sprite_ext(sprite_index, 0, 0, 0,
//	image_xscale, image_yscale,
//	image_angle, image_blend, image_alpha);
//draw_sprite_stretched_ext(sprite_index, 0, 0 , 0, sprite_width, sprite_height, c_aqua, image_alpha)
restart_button.draw(restart_button.width,restart_button.height,restart_button.text)