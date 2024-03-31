/// @description Init
event_inherited();
base_image_speed = 0.1;
dashing_image_speed = 1;
shielding_image_speed = 0;
image_speed = base_image_speed;
hp = 800;
melee_damage = 34;
base_grav = 0.6;
grav = base_grav;
vel_x = 0;
vel_y = 0;
width = 1;
height = 1;
movement_speed = 4;
charge_movement_speed_multiplier = 6;
melee_engagement_range = 128;
melee_attack_range = 128;
melee_charge_speed = 45;
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
nearest_echo = noone;
glow = instance_create(x, y, obj_shield_beetle_glow);