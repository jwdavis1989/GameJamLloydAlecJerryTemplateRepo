/// @description Insert description here
// You can write your code in this editor
//Handle Death
if (hp < 1) {
	effect_create_depth(-1003, ef_explosion, x, y, 1, c_red);
	audio_play_sound(snd_bug_noise, 2, 0, 1, 0, 0.3);
	instance_destroy(self);
}

//States
if (!currently_melee_charging) {
	//1. Burrowing/Spawning
		//This can be handled in the create event likely

	//2. Chasing
	if (objPlayer.x > x) {
		vel_x = movement_speed;
	}
	else {
			vel_x = -movement_speed;
	}

	//3. Shield
	//If player is out of combat range, periodically shield
	if (alarm[2] <= 0) {
		alarm[2] = shield_cooldown_timer;
	}

	//4. Melee Charge-up
	if (abs(x - objPlayer.x) < melee_engagement_range && !currently_melee_charging) {
		currently_melee_charging = true;
		//Begin melee charging animation
		audio_play_sound(snd_bug_noise, 2, 0, 1, 0, random_range(0.1, 0.3));
		audio_play_sound(snd_bug_noise, 3, 0, 1, 0, random_range(0.5, 1));
		alarm[0] = melee_animation_duration;
		vel_x = 0;
		image_speed = 0;
		sprite_index = spr_shield_beetle_wing_flap;
		image_index = 0;
		attack_direction = (x < objPlayer.x);
	}

	//5. Melee Attack
		//Handled by alarm[1]
		
	//Animation
	if (vel_x < 0) {
		image_xscale = width;	
	}
	else if (vel_x > 0) {
		image_xscale = -width;	
	}
}
else {
	instance_create(x, y, obj_shield_beetle_echo);
	nearest_echo = instance_nearest(x, y, obj_shield_beetle_echo);
	if (attack_direction) {
		nearest_echo.image_xscale = -width;
	}
	else {
		nearest_echo.image_xscale = width;
	}
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
