/// @function monster_death_handle_supply()
/// Returns expended supply to monster spawner.
function monster_death_handle_supply(monster_object){
	if (instance_exists(obj_defense_spawn_controller) && monster_object.spawned) {
		obj_defense_spawn_controller.current_supply += monster_object.supply_cost;
	}
}