message_to_show = "Welcome Commander *STATIC* to Naval Vessel *STATIC*";
show_time = 125
show_warning = false;
times_to_show = 2;
game_start = false;
on_trigger = function(){
	if(show_warning){
		audio_play_sound(vcWarning1, 1, false);
		message_to_show = "Warning. Dangerous fauna *STATIC* detected.";
	}else{
		show_warning = true;
		objPlayer.vel_x = 0;
		objPlayer.control_locked = true
		audio_play_sound(vcWelcomeCommander, 1, false)//, 0.75, 0, 0.75);
	}
}
on_end = function(){
	if(game_start){
		room_goto(rmCentralHub);
		objPlayer.x = 315;
		objPlayer.y = 600;
		objPlayer.control_locked = false
	}else{
		game_start = true;
	}
		
}