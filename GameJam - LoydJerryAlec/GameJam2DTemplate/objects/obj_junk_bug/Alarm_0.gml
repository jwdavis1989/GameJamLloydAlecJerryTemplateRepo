/// @description Jump Duration
vel_y = 0;
grav = base_grav;
jumping = false;
image_speed = chomp_image_speed;
sprite_index = spr_junk_bug_chomp;

//Teeth facing
image_angle = point_direction(x, y, objPlayer.x, objPlayer.y) + 270;