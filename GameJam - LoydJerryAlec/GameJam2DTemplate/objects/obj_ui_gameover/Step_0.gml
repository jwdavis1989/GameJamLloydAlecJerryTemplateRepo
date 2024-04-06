/// @description Insert description here
// You can write your code in this editor
if(time_passed < 120){
	time_passed += 1
	image_alpha = time_passed * 1/120
}else{
	image_alpha = 1;
	//action_restart_game();
}