
//Aggro
event_inherited();

//Chase
if (aggro) {
    if (distance_to_object(objPlayer) > hoverRange && !turretStance) {
        move_towards_point(objPlayer.x, objPlayer.y, movementSpeed);
    }
    else if (distance_to_object(objPlayer) < hoverRange) {
        turretStance = true;
        move_towards_point(x, y, 0);
        if (!firing) {
            alarm[2] = random_range(5, 15);
            firing = true;
        }
    }
    else if (distance_to_object(objPlayer) > (hoverRange + hoverRangeBuffer) && turretStance) {
        turretStance = false;
        move_towards_point(objPlayer.x, objPlayer.y, movementSpeed);
    }
    
    turret.image_angle = point_direction(objPlayer.x, objPlayer.y, x, y);
}
//Bobbing Effect Update
y += currentVelY;
x += currentVelX;

//Turret
turret.x = x;
turret.y = y;
turret.image_blend = image_blend;
turret.image_xscale = width;
turret.image_yscale = height;
glow.x = x;
glow.y = y;

if (hp < 1) {
	audio_play_sound_at(snd_bug_noise, x, y, 0, 100, 300, 1, 0, 2, 1, 0, 1.5);
	effect_create_depth(-1003, ef_firework, x, y, 0, c_red);
	effect_create_depth(-1003, ef_explosion, x, y, 0, c_red);
    instance_destroy(turret);
    instance_destroy(glow);
	monster_death_handle_supply(self);
    instance_destroy(self);
}

