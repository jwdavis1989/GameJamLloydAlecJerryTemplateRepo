message_to_show = "Press [E] to Interact with Chests & Doors";
on_trigger = function(){
	objPlayer.vel_x = 0;
	instance_destroy(inst_jump_tutorial);
	//objPlayer.control_locked = true
}
on_end = function(){
	instance_create(0,0,obj_ui_victory)
	//objPlayer.control_locked = false
}