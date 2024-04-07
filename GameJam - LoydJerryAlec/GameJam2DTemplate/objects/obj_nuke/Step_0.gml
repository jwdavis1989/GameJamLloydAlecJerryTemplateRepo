/// @description Insert description here
// You can write your code in this editor
if (launched) {
	obj_game_mode_controller.boss.visible = true;
	obj_game_mode_controller.boss.image_xscale = 60;
	obj_game_mode_controller.boss.image_yscale = 60;
	y += vel_y;
	if (y < obj_game_mode_controller.spawn_tentacles_y && alarm[0] < 0) {
		var explosion = instance_create(obj_game_mode_controller.room_center_x, 
		obj_game_mode_controller.spawn_tentacles_y, objExplosionCentered);
		explosion.depth = -10000;
		explosion.image_xscale = explosion_scale;
		explosion.image_yscale = explosion_scale;
		alarm[0] = 30;
		visible = false;
		effect_create_depth(-1003, ef_firework, x, y, 2, c_red);
		effect_create_depth(-1003, ef_explosion, x, y, 2, c_red);
	}
}