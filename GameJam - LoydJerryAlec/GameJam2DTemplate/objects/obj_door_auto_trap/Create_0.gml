image_speed = 0;
blocker = instance_create(x, y, obj_door_blocker);
blocker.image_xscale = image_xscale; // Ensures player is stopped by door regardless of object scaling
blocker.image_yscale = image_yscale;
open = false;
player_close = false;
trap_close = false;