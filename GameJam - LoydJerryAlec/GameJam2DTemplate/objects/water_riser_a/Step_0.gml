/// @description Insert description here
// You can write your code in this editor
if(objPlayer.x > obj_door_auto_trap.x){
	water_rising = true
}
if(water_rising && y > 575){
	obj_water_level.y -= vel_y
	y=y-vel_y
}