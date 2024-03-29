/// @description Melee Charging Up!
alarm[1] = melee_animation_duration;
vel_x = charge_movement_speed_multiplier * movement_speed
image_speed = dashing_image_speed;
vel_y = 0;
grav = 0;
if (!attack_direction) {
	vel_x = -vel_x;
}
audio_play_sound(snd_bottle_rocket, 2, 0, 1, 0, 2);
//Animation change to melee attack