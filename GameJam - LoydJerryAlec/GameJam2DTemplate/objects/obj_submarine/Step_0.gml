/// @description 
var move_x = 0;
var move_y = 0;

if(obj_inventory.current_keycards == 0){
	move_x = obj_dungeon_marker.x
	move_y = obj_dungeon_marker.y
}else if (obj_inventory.current_keycards == 1){
	move_x = obj_dungeon_marker2.x
	move_y = obj_dungeon_marker2.y
}else{
	move_x = obj_dungeon_marker3.x
	move_y = obj_dungeon_marker3.y
}
	
if point_distance(x, y, move_x, move_y) > 1
{
    move_towards_point(move_x, move_y, 1)
}else{
	objNightVisionCamera.visible = true
	objPlayer.visible = true;
	objPlayer.image_xscale = 1;
	objPlayer.control_locked = false;
	if(obj_inventory.current_keycards == 0){
		room_goto(rmDungeon3);
		objPlayer.x = 350
		objPlayer.y = 1050
	}else if (obj_inventory.current_keycards == 1){
		objPlayer.x = 200
		objPlayer.y = 420
		room_goto(rm_lloyd_dungeon);
	}else{
		room_goto(rmAlecDev);
		objPlayer.x = 200
		objPlayer.y=1000
	}
}