/// @description flee after melee animation duration
// You can write your code in this editor
currently_melee_charging = false;
currently_melee_animating = false;
image_speed = base_image_speed;
//sprite_index = spr_shark;
if (objPlayer.x > x) {
	vel_x = -movement_speed;
}
else {
		vel_x = movement_speed;
}
flee_animation=true;
alarm[2]=flee_aniimation_duration