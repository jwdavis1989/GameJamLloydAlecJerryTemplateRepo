/// @description Initialize Variables
hp = 5;
grav = 0.6;
init_grav = 0.6
vel_x = 0;
vel_y = 0;
jumpspeed = 14;
init_jumpspeed = 14
movespeed = 8;
init_movespeed = 8
dashing = false
image_speed = 0.1
grounded = false
nightVision = true;
if (nightVision) {
	instance_create(x, y, objNightVisionCamera);
}
facing = "right";
invulnerable = false;
control_locked = false;
canGrapple = true;
grapple = noone;
grappleSpeed = 32;
permanent_echo = false;

bulletAnchorX = x + sprite_width/2 - 1 //63
bulletAnchorY = y - 11; //21

//Weapon Stats
//equipped_weapon = instance_create(bulletAnchorX, bulletAnchorY, obj_gun_base_shotgun);
equipped_weapon = ""; // handled in obj_inventory
/*
damage = 5;
maxAmmo = 2;
currentAmmo = maxAmmo;
reloading = false;
reloadSpeed = 15;
pelletCount = 100;
pelletSpread = 4;
pelletSpeed = 16;
pelletSpeedVariance = 0.75;
pelletLifetime = 15;
pelletExplosive = false;
pelletExplosiveRadius = 64;
*/