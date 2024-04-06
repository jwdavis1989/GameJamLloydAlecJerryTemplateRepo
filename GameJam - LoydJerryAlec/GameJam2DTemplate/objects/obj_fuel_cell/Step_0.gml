/// @description Delete pick-up message when player moves away
if(!place_meeting(x, y, objPlayer)){
	instance_destroy(message);
	message = noone;
}

// Tank falls towards ground
if(falling){
	y += grav;
}