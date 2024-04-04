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
		pause = false;
		instance_activate_all()
		if surface_exists(pauseSurf)
			surface_free(pauseSurf)
		if buffer_exists(pauseSurfBuffer) 
			buffer_delete(pauseSurfBuffer)
	}
}
gpu_set_blendenable(true)