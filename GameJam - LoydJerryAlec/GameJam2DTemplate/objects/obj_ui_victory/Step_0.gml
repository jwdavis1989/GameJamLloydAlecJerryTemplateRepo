/// @description Insert description here
// You can write your code in this editor
if(time_passed < 90){
	time_passed += 1
	image_alpha = time_passed * 1/90//0.005
}else{
	image_alpha = 1;
	//action_restart_game();
}