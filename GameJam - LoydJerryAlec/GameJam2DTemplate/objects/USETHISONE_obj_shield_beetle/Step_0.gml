/// @description Insert description here
// You can write your code in this editor
//Handle Death
if (hp < 1) {
	monster_death_handle_supply(self);
	effect_create_depth(-1003, ef_firework, x, y, 0, c_red);
	effect_create_depth(-1003, ef_explosion, x, y, 1, c_red);
	audio_play_sound_at(snd_bug_noise, x, y, 0, 100, 300, 1, 0, 2, 1, 0, 0.3);
	instance_destroy(self);
}

//States
if (!currently_melee_charging) {

	//Chasing
	if (objPlayer.x > x) {
		vel_x = movement_speed;
	}
	else {
			vel_x = -movement_speed;
	}

	//Melee Charge-up
	if (abs(x - objPlayer.x) < melee_engagement_range && !currently_melee_charging) {
		currently_melee_charging = true;
		//Begin melee charging animation
		audio_play_sound_at(snd_bug_noise, x, y, 0, 100, 300, 1, 0, 2, 1, 0, random_range(0.1, 0.3));
		audio_play_sound_at(snd_bug_noise, x, y, 0, 100, 300, 1, 0, 3, 1, 0, random_range(0.5, 1));
		alarm[0] = melee_animation_duration;
		vel_x = 0;
		image_speed = 1;
		sprite_index = spr_shield_beetle_wing_flap;
		image_index = 0;
		effect_create_depth(-1003, ef_flare, x, y, 2, c_red);
		attack_direction = (x < objPlayer.x);
	}
	
    //Animation
	else if (vel_x < 0) {
		image_xscale = width;
		sprite_index = spr_shield_beetle_walking;
		image_speed = base_image_speed;
	}
	else if (vel_x > 0) {
		image_xscale = -width;	
		sprite_index = spr_shield_beetle_walking;
		image_speed = base_image_speed;
	}
	else {
		sprite_index = spr_shield_beetle_idle;
	}
		
	
}
else {
	instance_create_depth(x, y, -1003, obj_shield_beetle_echo);
	//effect_create_depth(-1002, ef_flare, x, y, 1, c_red);
	nearest_echo = instance_nearest(x, y, obj_shield_beetle_echo);
	if (attack_direction) {
		nearest_echo.image_xscale = -width;
	}
	else {
		nearest_echo.image_xscale = width;
	}
}

if (alarm[1] > 0) {
	effect_create_depth(-1002, ef_flare, x, y + sprite_height/8, width - 1, c_red);	
	effect_create_depth(-1002, ef_flare, x, y + sprite_height/4, width - 1, c_red);	
}
if (alarm[0] > 0 && alarm[0] < melee_animation_duration && currently_melee_charging) {
	vel_y-= 0.1 * grav;	
}
else {
	vel_y += grav;
}

//Horizontal Collision
if (place_meeting(x+vel_x,y,obj_wall_parent))
{
    while(!place_meeting(x+sign(vel_x),y,obj_wall_parent))
    {
        x += sign(vel_x);
    }
    vel_x = 0;
	if (currently_melee_charging) {
		//Screen Shake!
		effect_create_depth(-7, ef_smoke, x, y, 1, c_white);
		screen_shake(10);
	}
}
x += vel_x;

//Vertical Collision
if (place_meeting(x,y+vel_y,obj_wall_parent))
{
    while(!place_meeting(x,y+sign(vel_y),obj_wall_parent))
    {
        y += sign(vel_y);
    }
    vel_y = 0;
}
y += vel_y;
