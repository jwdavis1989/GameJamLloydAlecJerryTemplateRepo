//Normal Shooting
if not control_locked and can_shoot and not aiming_missile
{
    if form == 0//jet
    {
        can_shoot = false
        
        if ship_weapon == 0//Dumbfire Bullets
        {
            instance_create(x, y - 10, obj_jet_bullet)
            alarm[0] = 5
            audio_play_sound(snd_shoot, 1, 0)
        }
        else if ship_weapon == 1//Rapid Fire Bullets
        {
            instance_create(x, y - 10, obj_jet_bullet_auto)
            alarm[0] = 5
            alarm[2] = 5
            rapid_fire = true
            audio_play_sound(snd_energy_shot, 1, 0)
        }
        else if ship_weapon == 2//Spread Shot
        {
            instance_create(x, y - 10, obj_jet_spread_middle)
            instance_create(x - 1, y - 10, obj_jet_spread_left)
            instance_create(x - 40, y - 10, obj_jet_spread_left)
            instance_create(x + 1, y - 10, obj_jet_spread_right)
            instance_create(x + 40, y - 10, obj_jet_spread_right)
            alarm[0] = 10
            audio_play_sound(snd_custom_gunshot, 1, 0)
        }
    }
    else//mech
    {
        can_shoot = false
        
        if mech_weapon == 0     //Dumbfire Bullets
        {
            instance_create(mech_left_gun[0], mech_left_gun[1], obj_mech_bullet)
            instance_create(mech_right_gun[0], mech_right_gun[1], obj_mech_bullet)
            alarm[0] = 5
            audio_play_sound(snd_shoot, 1, 0)
        }
        else if mech_weapon == 1//Guided Missile
        {
            instance_create(x, y, obj_missile_pod);
            alarm[0] = 60
            audio_play_sound(snd_missile_launch, 1, 0)
        }
        else if mech_weapon == 2//Energy Lances
        {
            instance_create(mech_left_gun[0], mech_left_gun[1], obj_mech_lance_left)
            instance_create(mech_right_gun[0], mech_right_gun[1], obj_mech_lance_right)
            alarm[0] = 10
            audio_play_sound(snd_energy_shot, 1, 0)
        }
    }
}

//Special Missile Waypoints
if aiming_missile and missile_points > 0
{
    if missile_points == 5
    {
        if (distance_to_point(mouse_x, mouse_y) <= 150)
        {
            missile_points -= 1
            point1x = mouse_x
            point1y = mouse_y
            instance_create(mouse_x, mouse_y, obj_missile_point)
            instance_destroy(obj_missile_range_indicator)
            instance_create(mouse_x, mouse_y, obj_missile_range_indicator)
            mech_angle = point_direction(x, y, point1x, point1y) - 90
        }
    }
    
    else if missile_points == 4
    {
        if (point_distance(point1x, point1y, mouse_x, mouse_y) <= 150)
        {
            missile_points -= 1
            point2x = mouse_x
            point2y = mouse_y
            instance_create(mouse_x, mouse_y, obj_missile_point)
            instance_destroy(obj_missile_range_indicator)
            instance_create(mouse_x, mouse_y, obj_missile_range_indicator)
            line1_draw = true
        }
    }
    else if missile_points == 3
    {
        if (point_distance(point2x, point2y, mouse_x, mouse_y) <= 150)
        {
            missile_points -= 1
            point3x = mouse_x
            point3y = mouse_y
            instance_create(mouse_x, mouse_y, obj_missile_point)
            instance_destroy(obj_missile_range_indicator)
            instance_create(mouse_x, mouse_y, obj_missile_range_indicator)
            line2_draw = true
        }
    }
    else if missile_points == 2
    {
        if (point_distance(point3x, point3y, mouse_x, mouse_y) <= 150)
        {
            missile_points -= 1
            point4x = mouse_x
            point4y = mouse_y
            instance_create(mouse_x, mouse_y, obj_missile_point)
            instance_destroy(obj_missile_range_indicator)
            instance_create(mouse_x, mouse_y, obj_missile_range_indicator)
        }
    }
    else if missile_points == 1
    {
        if (point_distance(point4x, point4y, mouse_x, mouse_y) <= 150)
        {
            missile_points -= 1
            point5x = mouse_x
            point5y = mouse_y
            instance_destroy(obj_missile_range_indicator)
            instance_create(mouse_x, mouse_y, obj_missile_point_2)
            alarm[1] = 15
            drawing_missile_lines = true
            //audio_play_sound(snd_missile_launch, 1, 0)
        }
    }
}

