debug = false;
active = false;
current_phase = 1;
wave = 1;
supply_cap = 200;
current_supply = 30;
supply_generation_rate = 10/(450);
minimum_spawn_cooldown = 30;
maximum_spawn_cooldown = 120;
spawn_timer = 30;
if (active) {
	alarm[0] = spawn_timer;
}

//Might be deleted later
TEMP_new_monster_supply = 10;
