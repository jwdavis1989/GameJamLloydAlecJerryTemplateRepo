/// @description Init
event_inherited();
base_image_speed = 0.1;
dashing_image_speed = 1;
image_speed = base_image_speed;
hp = 600;
base_grav = 0;
grav = base_grav;
vel_x = 1;
vel_y = 0;
horizontal_buffer = 16;
vertical_buffer = 16;
width = 3;
height = 3;
movement_speed = 5;
charge_movement_speed_multiplier = 2;
melee_engagement_range = 128;
melee_attack_range = 64;
melee_charge_speed = 28;
currently_melee_charging = false;
currently_melee_animating = false;
melee_animation_duration = 32;
flee_animation = false;
flee_aniimation_duration = 45
movement_animation_timer = 0;
if (instance_exists(objPlayer)) {
	attack_direction = x < objPlayer.x;
}
else {
	attack_direction = true;
}
image_xscale = width;
image_yscale = height;
debug_message = "";