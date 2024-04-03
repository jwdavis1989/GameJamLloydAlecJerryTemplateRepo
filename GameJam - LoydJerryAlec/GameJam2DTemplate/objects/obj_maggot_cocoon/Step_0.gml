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

if (ascending) {
	vel_y = -movement_speed;	
}
else {
	vel_y += grav;	
}

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