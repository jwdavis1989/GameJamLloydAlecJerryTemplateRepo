/// @description Insert description here
// You can write your code in this editor
//if(obj_inventory.current_keycards == 0){
	image_xscale = -image_xscale
//}

game_set_speed(30, gamespeed_fps);
objNightVisionCamera.visible = false;
objPlayer.visible = false;
obj_game_mode_controller.crack.visible = false;
selected_dungeon = -1;

if (obj_inventory.last_dungeon == 1){
	x = obj_dungeon_marker.x
	y = obj_dungeon_marker.y
}else if(obj_inventory.last_dungeon == 2){
	x = obj_dungeon_marker2.x
	y = obj_dungeon_marker2.y
}