/// @description Wave Monster #2 Spawn Timer
if (current_wave[1].count > 0) {
	alarm[3] = current_wave[1].spawn_time_interval;	
	current_wave[1].count--;
	if (current_wave[1].unit) {
		spawn_monster_with_aggro(spawn_tentacles_x[choose(0, 1)], spawn_tentacles_y, current_wave[1].unit);
	}
}