message_to_show = "[Shift} to increase speed & jump height\n[Space] to jump"
show_time = 90
on_trigger = function(){
	objPlayer.vel_x = 0;
	objPlayer.control_locked = true
}
on_end = function(){
	objPlayer.control_locked = false
}