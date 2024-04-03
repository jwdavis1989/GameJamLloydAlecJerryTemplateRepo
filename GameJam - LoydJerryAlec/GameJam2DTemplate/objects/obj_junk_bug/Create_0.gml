/// @description Init
event_inherited();
transform_image_speed = 0.1;
chomp_image_speed = 1;
dashing_image_speed = 1;
aggroRange = 64;
jumping = false;
jump_duration = 30;
jump_speed = 6;
jump_cooldown = 15;
jump_off_cooldown = true;
grounded = true;
image_speed = 0;
hp = 50;
melee_damage = 20;
base_grav = 0.6;
base_grav = 0.6;
grav = base_grav;
vel_x = 0;
vel_y = 0;
width = 1.5;
height = 1.5;
movement_speed = 6;
if (instance_exists(objPlayer)) {
	attack_direction = x < objPlayer.x;
}
else {
	attack_direction = true;
}
image_xscale = width;
image_yscale = height;