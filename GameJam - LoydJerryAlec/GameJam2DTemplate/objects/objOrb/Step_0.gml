
//Aggro
event_inherited();

//Chase
if (aggro) {
    if (distance_to_object(objPlayer) < aggroRange 
    && distance_to_object(objPlayer) > hoverRange && !turretStance) {
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
glow.x = x;
glow.y = y;

if (hp < 1) {
    instance_create(x, y, objExplosion);
    instance_destroy(turret);
    instance_destroy(glow);
    instance_destroy(self);
}

