/// @description Insert description here
if (phase == "Defense") {
	if (!wave_began) {
		if (wave == 1) {
			current_wave = wave_1;
		}
		else if (wave == 2) {
			current_wave = wave_2;
		}
		else if (wave == 3) {
			current_wave = wave_3;
		}
		else if (wave == 4) {
			current_wave = wave_4;
		}
	
		//Spawn monsters in list between left/right sides
		/*
		current_wave = [];
	wave_1 = [{unit: obj_maggot, count: 10, spawn_time_interval: 15},
			  {unit: USETHISONE_obj_shield_beetle, count: 1, spawn_time_interval: 15}];
	wave_2 = [{unit: USETHISONE_obj_shield_beetle, count: 2, spawn_time_interval: 15}];
	wave_3 = [{unit: obj_maggot, count: 10, spawn_time_interval: 15}, 
			  {unit: USETHISONE_obj_shield_beetle, count: 2, spawn_time_interval: 15}];
	wave_4 = [{unit: obj_maggot, count: 20, spawn_time_interval: 15}, 
			  {unit: USETHISONE_obj_shield_beetle, count: 4, spawn_time_interval: 15}];
		*/
		wave_remaining = 0;
		for (var i=0; i<array_length(current_wave);i++) {
			if (current_wave[i].count >= 0) {
				alarm[i + 2] = current_wave[i].spawn_time_interval;	
				wave_remaining += current_wave[i].count;
				current_wave[i].count--;
			}
		}
		wave_began = true;
	}
	else if (wave_remaining == 0){
		phase = "Gather";
	}
}
else if (phase == "Gather") {
	//Give the player a timer to go get stuff, encourage them to pick a destination
	//Once timer is over, switch to repair phase.
}
else if (phase == "Repair") {
	//Repair submarine grace-period before next wave
	//When timer ends, increment wave to (wave + 1), then begin defense phase.
}