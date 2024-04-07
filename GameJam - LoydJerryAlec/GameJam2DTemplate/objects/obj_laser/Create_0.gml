/// @description
event_inherited();
nearest_enemy = noone;
explosive = false;
speed_multiplier = 1;
if(objPlayer.facing == "left"){
	image_xscale = -1; // Flip sprite
	speed_multiplier = -1; // Move toward left
}