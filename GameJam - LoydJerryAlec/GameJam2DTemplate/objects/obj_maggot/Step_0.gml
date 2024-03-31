/// @description Insert description here
// You can write your code in this editor
//Handle Death
if (hp < 1) {
	effect_create_depth(-1003, ef_firework, x, y, 0, c_red);
	effect_create_depth(-1003, ef_explosion, x, y, 0, c_red);
	audio_play_sound(snd_bug_noise, 2, 0, 1, 0, 3);
	instance_destroy(self);
}

//States
if (objPlayer.x > x) {
		vel_x = movement_speed;
	}
	else {
			vel_x = -movement_speed;
	}

    //Animation
	if (vel_x < 0) {
		image_xscale = width;
		sprite_index = spr_maggot_walking;
		image_speed = base_image_speed;
	}
	else if (vel_x > 0) {
		image_xscale = -width;	
		sprite_index = spr_maggot_walking;
		image_speed = base_image_speed;
	}
	else {
		sprite_index = spr_maggot_idle;
	}

vel_y += grav;

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
		effect_create_depth(-7, ef_smoke, x, y, 1, c_dkgray);
		
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
