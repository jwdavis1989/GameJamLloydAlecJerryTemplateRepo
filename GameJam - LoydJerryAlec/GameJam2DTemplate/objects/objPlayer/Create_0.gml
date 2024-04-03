/// @description Initialize Variables
hp = 100;
max_hp = hp;
grav = 0.6;
init_grav = 0.6
vel_x = 0;
vel_y = 0;
jumpspeed = 14;
init_jumpspeed = 14
movespeed = 8;
init_movespeed = 8
dashing = false
base_air_dashes = 1;
air_dashes = base_air_dashes;
image_speed = 0.1
grounded = false
nightVision = true;
oxygen_missing = 0;
oxygen_max = 100;
keycards[0] = false;
keycards[1] = false;
keycards[2] = false;
underwater = false;
if (nightVision) {
	instance_create(x, y, objNightVisionCamera);
}
facing = "right";
invulnerable = false;
control_locked = false;
permanent_echo = false;
glow = instance_create(x, y, obj_player_glow);
bulletAnchorX = x + sprite_width/2 - 1 //63
bulletAnchorY = y - 11; //21

//Weapon Stats
equipped_weapon = ""; // handled in obj_inventory

audio_listener_position(x, y, 0);
audio_listener_orientation(0, -1, 0, 0, 0, -1);