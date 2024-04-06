/// @description Insert description here
if (!invuln) {
	object_play_3d_sound(snd_reflected_shot, 0.9, 1.2, 3, 0.5);
	alarm[1] = 15;
	invuln = true;
	instance_destroy(other);
}