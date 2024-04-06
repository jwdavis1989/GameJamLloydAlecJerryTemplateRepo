/// @description volume cntrl
// You can write your code in this edit
if(keyboard_check_pressed(vk_escape)){
			//create volume slider
	var anchorX = __view_get( e__VW.XView, 0 );
	var anchorY = view_yview[0];
	volume_slider = instance_create(anchorX+175, anchorY+125, obj_slider);
	volume_slider.amount_current = vol_slider_current
	volume_slider_music = instance_create(anchorX+175, anchorY+200, obj_slider);
	volume_slider_music.amount_current = vol_slider_current_music
}
if(pause){
	if(volume_slider.is_being_dragged){
		vol_slider_current = volume_slider.amount_current
		volume = (vol_slider_current * 0.01) * vol_max // 0 to double volume
		audio_group_set_gain(audiogroup_default,volume,0)
	}
	if(volume_slider_music.is_being_dragged){
		vol_slider_current_music = volume_slider_music.amount_current
		volume_music = (vol_slider_current_music * 0.01) * vol_max
		audio_group_set_gain(audiogroup_music,volume,0)
	}
}

//if(keyboard_check(vk_down) && pause && alarm[1]<0){
//	alarm[1]=5; // 5 frames between volume change
//	//set volume
//	if(volume>0){
//		volume = volume - 0.05
//	}
//	audio_group_set_gain(audiogroup_default,volume,0)
//}
//if(keyboard_check(vk_up) && pause && alarm[1]<0){
//	alarm[1]=5; // 5 frames between volume change
//	//set volume
//	if(volume<2){
//		volume = volume + 0.05
//	}
//	audio_group_set_gain(audiogroup_default,volume,0)
//}