/// @description Leviathan Attack Animation Timer
// You can write your code in this editor
if (phase == "Defense") {
	alarm[1] = leviathan_attack_animation_timer;
	screen_shake(60);
	audio_play_sound(snd_snarling_growl, 1, 0, 0.9, 0, random_range(0.75, 1));
	audio_play_sound(snd_snarling_growl, 1, 0, 0.9, 0, random_range(0.5, 0.75));
	object_play_3d_sound(snd_glass_crack, 0.8, 1.2, 2, 1);
	submarine_hp -= 25;
	if (crack.image_index < 4) {
		crack.image_index++;
	}
	else {
		crack.image_index = 1;	
	}
}
//objNightVisionCamera.visible = true;