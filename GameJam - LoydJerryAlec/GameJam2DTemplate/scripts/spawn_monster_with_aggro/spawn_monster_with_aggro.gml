/// @function spawn_monster_with_aggro(spawn_x, spawn_y, object)
/// @param spawn_x real X location of spawned instance
/// @param spawn_y real Y location of spawned instance
/// @param object object Monster object to instantiate.
function spawn_monster_with_aggro(spawn_x, spawn_y, object){
	this = instance_create(spawn_x, spawn_y, object);
	with (this) {
		aggro = true;	
		spawned = true;
	}
}