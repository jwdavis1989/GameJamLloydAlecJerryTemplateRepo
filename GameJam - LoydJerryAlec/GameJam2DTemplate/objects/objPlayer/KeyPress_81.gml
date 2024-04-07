/// @description Sub Warp
// Sub warp
if(obj_game_mode_controller.phase == "Gather"){
	room_goto(rmCentralHub);
	obj_game_mode_controller.phase = "Repair";
	x = 512;
	y = 576;
}
