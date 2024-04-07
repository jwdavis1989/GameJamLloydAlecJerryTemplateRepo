/// @description Insert description here
depth = 111;
x_anchor_base = 512;
x_anchor = [448, 576];
y_anchor = 384;
image_speed = 0.5;
movement_speed = 16;
scale = 3;
explosion_scale = 1.5;
image_xscale = scale;
image_yscale = scale;
distance_shrink_rate = 12 / 30;
object_play_3d_sound(snd_bottle_rocket, 0.5, 0.75, 1, 0.9);
if (x < x_anchor_base) {
	left_side = true;	
	image_angle = point_direction(x, y, obj_game_mode_controller.room_center_x - 64, obj_game_mode_controller.spawn_tentacles_y) + 180;
	move_towards_point(obj_game_mode_controller.room_center_x - 64, obj_game_mode_controller.spawn_tentacles_y, movement_speed);
}
else {
	left_side = false;	
	image_angle = point_direction(x, y, obj_game_mode_controller.room_center_x + 64, obj_game_mode_controller.spawn_tentacles_y) + 180;
	move_towards_point(obj_game_mode_controller.room_center_x + 64, obj_game_mode_controller.spawn_tentacles_y, movement_speed);
}
explosion = noone;