/// @description Insert description here
// You can write your code in this editor
if (hp < 1) {
	effect_create_depth(-1003, ef_firework, x, y, 0, c_red);
	effect_create_depth(-1003, ef_explosion, x, y, 1, c_red);
	audio_play_sound(snd_bug_noise, 2, 0, 1, 0, 0.3);
	instance_destroy(self);
}
//States
//TODO should be handled in sprite and tied to movement speed
movement_animation_timer++;
if(currently_melee_animating){
	//Will be set to spr_shark_attack by alarm 0
}else if(movement_animation_timer<14){
	sprite_index = spr_shark_fin_away;
}else if (movement_animation_timer<28){
	sprite_index = spr_shark
}else if (movement_animation_timer<42){
	sprite_index = spr_shark_fin_toward
}else if(movement_animation_timer<56){
	sprite_index = spr_shark;
}else{
	movement_animation_timer = 0;
}

if (!currently_melee_charging && !flee_animation) {
	//movement direction
	if (objPlayer.x > x) {
		vel_x = movement_speed;
	}else {
			vel_x = -movement_speed;
	}
	
	if (abs(y - objPlayer.y) > vertical_buffer) 
	{
		if(objPlayer.y > y)
		{
			vel_y = movement_speed
		}else{
			vel_y = -movement_speed
		}
	}
	
	//wait before attadck
	if (abs(x - objPlayer.x) < melee_engagement_range && !currently_melee_animating) {
		//Begin melee charging animation
		currently_melee_charging = true;
		alarm[0] = melee_charge_speed;
		vel_x = 0;
		audio_play_sound(snd_bug_noise, 2, 0);
	}
}
		
//direction to face
if (abs(x - objPlayer.x) > horizontal_buffer) {
	if(currently_melee_charging || currently_melee_animating){
		image_xscale = width * ((objPlayer.x > x)? -1:1)
	}
	if(abs(x - objPlayer.x) < 32){
		if (vel_x < 0) {
			image_xscale = width;	
		}
		else if (vel_x > 0) {
			image_xscale = -width;	
		}

	}
}


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
}
if (place_meeting(x,y+vel_y,obj_water_level))
{
    while(!place_meeting(x,y+sign(vel_y),obj_water_level))
    {
        y += sign(vel_y);
    }
    vel_y = 0;
}
y += vel_y;
