message_to_show = "Press [E] to Interact with Chests & Doors";
on_trigger = function(){
	objPlayer.vel_x = 0;
	objPlayer.control_locked = true
}
on_end = function(){
	objPlayer.control_locked = false
}