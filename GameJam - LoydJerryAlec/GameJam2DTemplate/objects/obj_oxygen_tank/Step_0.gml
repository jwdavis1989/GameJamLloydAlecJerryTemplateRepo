/// @description Decerment interact timer
// @description Delete message if player isn't near
if(!place_meeting(x, y, objPlayer)){
	instance_destroy(message);
	message = noone;
}

if(interact_timer > 0){
	interact_timer--;
}