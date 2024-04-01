/// @description Init
event_inherited();
base_image_speed = 0.1;
dashing_image_speed = 1;
shielding_image_speed = 0;
image_speed = base_image_speed;
hp = 50;
melee_damage = 20;
base_grav = 0.6;
grav = base_grav;
vel_x = 0;
vel_y = 0;
width = 1.5;
height = 1.5;
movement_speed = 1;
morph_timer = random_range(30, 600);
alarm[0] = morph_timer;
if (instance_exists(objPlayer)) {
	attack_direction = x < objPlayer.x;
}
else {
	attack_direction = true;
}
image_xscale = width;
image_yscale = height;