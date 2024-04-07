/// @description Insert description here
// You can write your code in this editor
if(obj_inventory.current_keycards == 0){
	image_xscale = -image_xscale
}else if (obj_inventory.current_keycards == 1){
	x = obj_dungeon_marker.x
	y = obj_dungeon_marker.y
}else{
	x = obj_dungeon_marker2.x
	y = obj_dungeon_marker2.y
}
game_set_speed(30, gamespeed_fps);
objNightVisionCamera.visible =false