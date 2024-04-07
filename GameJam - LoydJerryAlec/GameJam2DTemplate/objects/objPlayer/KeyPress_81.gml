/// @description Lloyd Room Warp
room_goto(rm_lloyd_dungeon);
obj_game_mode_controller.phase = "Gather";
obj_game_mode_controller.wave_remaining = 0;
x = 520;
y = 240;

// Sub warp (Currently bugged)
//TO-DO: Only available when in gather phase
/*
room_goto(rmCentralHub);
obj_game_mode_controller.phase = "Defense";
x = 512;
y = 576;
*/

