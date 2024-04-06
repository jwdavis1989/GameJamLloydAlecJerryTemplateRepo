/// @description Wave Monster #1 Spawn Timer
if (current_wave[0].count > 0) {
	alarm[2] = current_wave[0].spawn_time_interval;	
	current_wave[0].count--;
	if (current_wave[0].unit) {
		spawn_monster_with_aggro(spawn_tentacles_x[choose(0, 1)], spawn_tentacles_y, current_wave[0].unit);
	}
}