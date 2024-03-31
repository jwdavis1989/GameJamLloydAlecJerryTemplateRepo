depth = -1001;
damage = 10;
alarm[0] = 30;
movementSpeed = 16;
image_angle = instance_nearest(x, y, objOrbTurret).image_angle;
move_towards_point(objPlayer.x, objPlayer.y, movementSpeed);

