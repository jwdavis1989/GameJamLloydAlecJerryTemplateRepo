/// @description Sub Warp
// Sub warp
if(obj_game_mode_controller.phase == "Gather" && room != rmCentralHub && !control_locked){
	room_goto(rmCentralHub);
	obj_game_mode_controller.phase = "Repair";
	x = 512;
	y = 576;
	underwater = false;
	oxygen_missing = 0;
	audio_stop_sound(snd_underwater_breathing);
	audio_stop_sound(snd_underwater_drowning);
	objNightVisionCamera.visible = false;
	obj_game_mode_controller.crack.visible = true;
}
