/// @description Insert description here
// You can write your code in this editor
//Handle Death
if (hp < 1) {
	effect_create_depth(-1003, ef_firework, x, y, 0, c_red);
	effect_create_depth(-1003, ef_explosion, x, y, 0, c_red);
	audio_play_sound_at(snd_bug_noise, x, y, 0, 100, 300, 1, 0, 2, 1, 0, random_range(2.9, 3.1));
	monster_death_handle_supply(self);
	instance_destroy(self);
}

//States
if (abs(x - objPlayer.x) < aggroRange && !aggro) {
	aggro = true;
	image_speed = transform_image_speed;
}

if (aggro && !jumping && grounded && jump_off_cooldown) {
	jumping = true;
	grounded = false;
	alarm[0] = jump_duration;
	vel_y -= jump_speed;
	grav = grav/2;
	image_angle = point_direction(x, y, objPlayer.x, objPlayer.y) + 270;
	audio_play_sound_at(snd_bug_noise, x, y, 0, 100, 300, 1, 0, 2, 1, 0, random_range(4.9, 5.1));
	if (objPlayer.x > x) {
		vel_x = movement_speed;
	}
	else {
			vel_x = -movement_speed;
	}

    //Animation
	if (image_index == 3 && sprite_index == spr_junk_bug) {
		image_speed = chomp_image_speed;
		sprite_index = spr_junk_bug_chomp;
	}
	if (vel_x < 0) {
		image_xscale = width;
	}
	else if (vel_x > 0) {
		image_xscale = -width;	
	}
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
	if (!grounded) {
		alarm[1] = jump_cooldown;
		jump_off_cooldown = false;
		vel_x = 0;
	}
	grounded = true;
}
y += vel_y;
