/// @description Insert description here
// You can write your code in this editor
//Horizontal Collision
if (place_meeting(x+vel_x,y,obj_wall_parent)) {
    while(!place_meeting(x+sign(vel_x),y,obj_wall_parent))
    {
        x += sign(vel_x);
    }
    vel_x = 0;
	vel_y = 0;
	grappled = true;
	lifeSpan = 30;
	image_index = 1;
}
x += vel_x;

//Vertical Collision
if (place_meeting(x,y+vel_y,obj_wall_parent)) {
    while(!place_meeting(x,y+sign(vel_y),obj_wall_parent))
    {
        y += sign(vel_y);
    }
    vel_y = 0;
	vel_x = 0;
	grappled = true;
	lifeSpan = 30;
	image_index = 1;
}
y += vel_y;

