/// @description Insert description here
// You can write your code in this editor
if(time_passed < 120){
	time_passed += 1
	image_alpha = time_passed * 1/120
	if(!soundPlayed && time_passed > 20){
		soundPlayed=true;
		object_play_3d_sound(snd_glass_crack, 0.8, 1.2, 2, 1)
	}
}else{
	image_alpha = 1;
	//action_restart_game();

}