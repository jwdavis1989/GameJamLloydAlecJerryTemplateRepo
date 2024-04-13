/// @description 
var move_x = 0;
var move_y = 0;
if obj_inventory.current_keycards >=2{
	move_x = obj_dungeon_marker3.x
	move_y = obj_dungeon_marker3.y
}else if (obj_inventory.current_keycards == 1){
	if(obj_inventory.last_dungeon == 1){
		move_x = obj_dungeon_marker2.x
		move_y = obj_dungeon_marker2.y
	}else{
		move_x = obj_dungeon_marker.x
		move_y = obj_dungeon_marker.y
	}
}else if (selected_dungeon == 2){
	move_x = obj_dungeon_marker2.x
	move_y = obj_dungeon_marker2.y
}else if (selected_dungeon == 1) {
	move_x = obj_dungeon_marker.x
	move_y = obj_dungeon_marker.y
}

if(selected_dungeon == -1 && obj_inventory.current_keycards == 0){
	
}else if point_distance(x, y, move_x, move_y) > 1
{
    move_towards_point(move_x, move_y, 1)
}else{
	if(instance_exists(objUIAmmoController)){
		objUIAmmoController.visible = true;
	}
	objNightVisionCamera.visible = true
	objPlayer.visible = true;
	objPlayer.image_xscale = 1;
	objPlayer.control_locked = false;
	if(obj_inventory.current_keycards >=2)
	{
		room_goto(rmAlecDev);
		objPlayer.x = 192;
		objPlayer.y = 1168;
	}else if (obj_inventory.current_keycards == 1){
		if(obj_inventory.last_dungeon == 1){
			objPlayer.x = 192;
			objPlayer.y = 512;
			room_goto(rm_lloyd_dungeon);
		}else{
			room_goto(rmDungeonMiniArena);
			objPlayer.x = 350
			objPlayer.y = 1050
		}
	}else if(selected_dungeon == 1){
		room_goto(rmDungeonMiniArena);
		objPlayer.x = 350
		objPlayer.y = 1050
	}else if (selected_dungeon == 2){
		objPlayer.x = 192;
		objPlayer.y = 512;
		room_goto(rm_lloyd_dungeon);
	}
}