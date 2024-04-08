/// @description pause unpause
// You can write your code in this editor
gpu_set_blendenable(false)


if (pause){
	surface_set_target(application_surface);
	if(surface_exists(pauseSurf))
		draw_surface( pauseSurf,0,0);
	else{
		pauseSurf = surface_create(resW,resH);
		buffer_set_surface(pauseSurfBuffer,pauseSurf,0)
	}
	if(surface_exists(menuSurf))
		draw_surface( menuSurf,0,0);
	surface_reset_target()
}
if(keyboard_check_pressed(vk_escape)){
	//pause
	if(!pause){
		pause=true;
		instance_deactivate_all(true);
		//pause sprites , tiles, backgrounds , etc
		
		instance_activate_object(volume_slider)
		instance_activate_object(volume_slider_music)
		//capture moment
		pauseSurf = surface_create(resW,resH);
		surface_set_target(pauseSurf)
		draw_surface(application_surface, 0, 0)
		surface_reset_target()
		//backup
		if(buffer_exists(pauseSurfBuffer)) buffer_delete(pauseSurfBuffer)
		pauseSurfBuffer = buffer_create(resW*resH*4,buffer_fixed,1);
		buffer_get_surface(pauseSurfBuffer, pauseSurf, 0);

	}else{//unpause
		instance_destroy(volume_slider)
		volume_slider = -1
		instance_destroy(volume_slider_music)
		volume_slider_music = -1
		pause = false;
		instance_activate_all()
		if surface_exists(pauseSurf)
			surface_free(pauseSurf)
		if surface_exists(menuSurf)
			surface_free(menuSurf)
		if buffer_exists(pauseSurfBuffer) 
			buffer_delete(pauseSurfBuffer)
		window_set_cursor(cr_arrow);
	}
}
gpu_set_blendenable(true)