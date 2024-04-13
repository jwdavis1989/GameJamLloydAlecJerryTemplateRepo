message_to_show = "[Mouse Left] to Shoot!\n[R] to Reload!"
on_trigger = function(){
	objPlayer.vel_x = 0;
	objPlayer.control_locked = true
	instance_create(1694, 599, obj_maggot);
}
on_end = function(){
	objPlayer.control_locked = false
}