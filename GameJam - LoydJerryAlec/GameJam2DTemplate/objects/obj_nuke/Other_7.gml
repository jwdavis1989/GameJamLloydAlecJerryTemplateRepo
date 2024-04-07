image_speed = 0; // Stop animation at end to prevent looping
image_index = image_number - 1; // Stop at last frame
var explosion = instance_create(obj_game_mode_controller.room_center_x, obj_game_mode_controller.spawn_tentacles_y, objExplosion);
explosion.depth = -1000;
explosion.image_xscale = explosion_scale;
explosion.image_yscale = explosion_scale;
alarm[0] = 30;