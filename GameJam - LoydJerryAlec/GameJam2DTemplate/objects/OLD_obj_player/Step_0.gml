if (not dead) {
    //Player Input
    if not control_locked and not aiming_missile
    {
        move_left = keyboard_check(ord("A"))
        move_right = keyboard_check(ord("D"))
        move_up = keyboard_check(ord("W"))
        move_down = keyboard_check(ord("S"))
        if form == 0//jet
        {
            moving_hor = (-1 * move_left) + move_right;
            moving_ver = (-1 * move_up) + move_down;
        }
        key_transform = keyboard_check_pressed(vk_space)
        }
    else
    {
        move_left = false
        move_right = false
        move_up = false
        move_down = false
        moving_hor = 0
        moving_ver = 0
        key_transform = false
    }
    //movement update
    if not aiming_missile
    {
        if form == 0//jet
        {
            vel_x = moving_hor * movespeed_hor
            if sign(moving_ver == 1) //Backwards
            {
                vel_y = moving_ver * (0.5 * movespeed_ver)
            }
            else                     //Forwards
            {
                vel_y = moving_ver * movespeed_ver
            }
            y = y - 4
        }
        else//form = Mech
        {
            ///friction
            vel_x *= (1 - 0.5)
            vel_y *= (1 - 0.5)
          
            //Movement
            if (move_left)
            {
                vel_x -= 2
            }
          
            if (move_right)
            {
                vel_x += 2
            }
          
            if (move_up)
            {
                vel_y -= 2
            }
            
            if (move_down)
            {
                vel_y += 2
            }
            
            image_angle = point_direction(x, y, mouse_x, mouse_y)
            mech_angle = image_angle
            //Horizontal Collision
            if (place_meeting(x+vel_x,y + vel_y,obj_water_parent))
            {
                vel_x = 0;
                vel_y = 0;
            }
                
        }    
        //horizontal collision
        if (place_meeting(x+vel_x,y,obj_wall_parent))
        {
            vel_x = 0
        }
        //vertical collision
        if (place_meeting(x,y+vel_y,obj_wall_parent))
        {
            vel_y = 0
        }
        
        //Movement update
        x += vel_x
        y += vel_y
        
        mech_left_gun[0]  = x - (mech_hardpoint_offset * sin(degtorad(mech_angle))) * (8 * sprite_size)
        mech_left_gun[1]  = y - (mech_hardpoint_offset * cos(degtorad(mech_angle))) * ( 8 * (sprite_size))
        mech_right_gun[0] = x + (mech_hardpoint_offset * sin(degtorad(mech_angle))) * (8 * sprite_size)
        mech_right_gun[1] = y + (mech_hardpoint_offset * cos(degtorad(mech_angle))) * ( 8 * (sprite_size))
        
        //staying onscreen
        if (x - 32) <= 0
        {
            x = 32
        }
        /*if (y - view_hport[0] - 32) <= 0
        {
            y = room_height - 128;
            obj_camera.y = y - 128;
        }*/
        if (y - 32) <= 0
        {
            y = 32
        } 
        if (x + 32) >= room_width
        {
            x = (room_width - 32)
        }
        if (y + 32) >= room_height
        {
            y = (room_height - 32)
        }
        
        //transformation
        if key_transform
        {
            if form == 0 and can_land//jet
            {
                form = 1//mech
                sprite_index = spr_player_mech_new
                audio_play_sound(snd_mech_transform_to_land, 0, 0)
                mech_angle = 90
                instance_create(x, y, obj_mech_legs)
                __background_set( e__BG.VSpeed, 0, 0 );
            }
            else if form == 1
            {   
                form = 0//jet
                sprite_index = spr_player_jet_boosting_new
                audio_play_sound(snd_mech_transform_to_air, 0, 0)
                movespeed_hor = 16
                mech_angle = 0
                __background_set( e__BG.VSpeed, 0, 30 );
                movespeed_ver = 18;
                alarm[3] = 15;
            }
        }
    }
    
    if drawing_missile_lines
    {
        audio_play_sound(snd_explosion, 1, 0)
    }
}

/* */
/*  */
