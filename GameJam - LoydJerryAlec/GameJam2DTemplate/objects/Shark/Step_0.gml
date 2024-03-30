/// @description Insert description here
// You can write your code in this editor

//States
movement_animation_timer++;
if(movement_animation_timer<15){
	sprite_index = spr_shark_fin_away;
}else if (movement_animation_timer<30){
	sprite_index = spr_shark
}else if (movement_animation_timer<45){
	sprite_index = spr_shark_fin_toward
}else if(movement_animation_timer<60){
	sprite_index = spr_shark;
}else if(movement_animation_timer<75){
	movement_animation_timer = 0;
}
if (!currently_melee_charging) {
	//movement animation

	//1. Burrowing/Spawning
		//This can be handled in the create event likely

	//2. Chasing
	if (objPlayer.x > x) {
		vel_x = movement_speed;
	}
	else {
			vel_x = -movement_speed;
	}


	//4. Melee Charge-up
	//if (abs(x - objPlayer.x) < melee_engagement_range && !currently_melee_charging) {
	//	currently_melee_charging = true;
	//	//Begin melee charging animation
	//	audio_play_sound(snd_bug_noise, 2, 0, 1, 0, 0.5);
	//	alarm[0] = melee_animation_duration;
	//	vel_x = 0;
	//	attack_direction = (x < objPlayer.x);
	//}

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
}
y += vel_y;
