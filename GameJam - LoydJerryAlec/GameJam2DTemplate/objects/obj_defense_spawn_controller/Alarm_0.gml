/// @description Spawn Timer
if (current_supply < supply_cap && current_supply > 0) {
		spawn_timer = random_range(minimum_spawn_cooldown, maximum_spawn_cooldown);
		if (TEMP_new_monster_supply < supply_cap - current_supply && current_supply > TEMP_new_monster_supply) {
			spawn_monster_with_aggro(objPlayer.x, objPlayer.y, objOrb);
			current_supply -= TEMP_new_monster_supply;
		}
}

//Insurance Bound Checking
if (current_supply > supply_cap) {
	current_supply = supply_cap;	
}
alarm[0] = spawn_timer;