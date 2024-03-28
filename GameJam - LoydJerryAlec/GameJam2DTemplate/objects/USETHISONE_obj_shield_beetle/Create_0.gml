/// @description Init
event_inherited();
hp = 100;
grav = 0.6;
vel_x = 0;
vel_y = 0;
width = 3;
height = 3;
movement_speed = 4;
charge_movement_speed_multiplier = 3;
melee_engagement_range = 128;
melee_attack_range = 128;
melee_charge_speed = 30;
currently_melee_charging = false;
currently_melee_animating = false;
melee_animation_duration = 30;
shield_cooldown_timer = 60;
if (instance_exists(objPlayer)) {
	attack_direction = x < objPlayer.x;
}
else {
	attack_direction = true;
}
image_xscale = width;
image_yscale = height;
debug_message = "";