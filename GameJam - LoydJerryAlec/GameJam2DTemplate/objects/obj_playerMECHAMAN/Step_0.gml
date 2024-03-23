//Get the player's input
key_right = keyboard_check(ord("D"));
key_left = -keyboard_check(ord("A"));
key_jump = keyboard_check_pressed(vk_space);
key_dash = keyboard_check_pressed(vk_shift);

//React to inputs
move = key_left + key_right;
if key_dash and not dashing and (move == 1 or move == -1) and grounded
{
    audio_play_sound(snd_bottle_rocket, 2, 0)
    movespeed = movespeed * 2
    //jumpspeed = 18
    grav = (0.5 * init_grav)
    dashing = true
    alarm[0] = 15
}
vel_x = move * movespeed;
if (vel_y < 10) 
{
    vel_y += grav
}

if (place_meeting(x,y+1,obj_wall_parent))
{
    vel_y = key_jump * -jumpspeed
}
if key_jump
{
    grounded = false
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
y += vel_y;

//Animation
if (move!=0) image_xscale = (0.5 * move);
if (place_meeting(x,y+1,obj_wall_parent))
{
    grounded = true
    if dashing
    {
        sprite_index = spr_player_dash
    }
    else
    {
    
        if (move!=0) 
        {
            sprite_index = spr_player_run;
            image_speed = 0.3
        }
        else 
        {
            sprite_index = spr_player_idle
            image_speed = 0.05
        }
    }
}
else
{
    if (vel_y < 0) 
    {
        sprite_index = spr_player_jump_up;
        image_speed = 0
    }
    else 
    {
        sprite_index = spr_player_jump_down
        image_speed = 0
        grav = 1
    }
}

if dashing
{
    instance_create(x, y, obj_dash_echo)
}

