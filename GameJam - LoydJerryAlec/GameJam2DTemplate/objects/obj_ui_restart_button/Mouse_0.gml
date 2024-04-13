/// @description Insert description here
// You can write your code in this editor
if(mouse_in){
	action_restart_game();
	room_goto(rmCentralHub);
	instance_create(300, 615, objPlayer)
	//objPlayer.x = 300
	//objPlayer.y = 615
}