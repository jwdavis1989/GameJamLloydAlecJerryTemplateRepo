/// @function monster_death_handle_supply()
/// Returns expended supply to monster spawner.
function monster_death_handle_supply(monster_object){
	if (instance_exists(obj_game_mode_controller) && monster_object.spawned) {
		obj_game_mode_controller.wave_remaining--;
		instance_create(obj_game_mode_controller.spawn_tentacles_x[0], 1.1 * obj_game_mode_controller.spawn_tentacles_y, obj_submarine_torpedo);
		instance_create(obj_game_mode_controller.spawn_tentacles_x[1], 1.1 * obj_game_mode_controller.spawn_tentacles_y, obj_submarine_torpedo);
	}
}