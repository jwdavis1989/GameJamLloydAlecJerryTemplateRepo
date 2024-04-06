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
		else {
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
		wave_remaining_max = 0;
		for (var i=0; i<array_length(current_wave);i++) {
			if (current_wave[i].count > 0) {
				alarm[i + 2] = current_wave[i].spawn_time_interval;	
				wave_remaining_max += current_wave[i].count;
				spawn_monster_with_aggro(spawn_tentacles_x[choose(0, 1)], spawn_tentacles_y, current_wave[i].unit);
				current_wave[i].count--;
			}
		}
		wave_remaining = wave_remaining_max;
		wave_began = true;
		tentacles[0] = instance_create(spawn_tentacles_x[0], spawn_tentacles_y, obj_leviathan_tentacle);
		tentacles[1] = instance_create(spawn_tentacles_x[1], spawn_tentacles_y, obj_leviathan_tentacle);
		for (var i=0; i<array_length(tentacles);i++) {
			tentacles[i].image_xscale = tentacle_width;
			tentacles[i].image_yscale = tentacle_height;
		}
		tentacles[0].image_xscale = -tentacle_width;
		audio_play_sound(snd_snarling_growl, 1, 0, 0.9, 0, random_range(0.5, 0.75));
	}
	else if (wave_remaining == 0){
		//phase = "Gather";
		//wave++;
		//wave_began = false;
		for (var i=0; i<array_length(tentacles);i++) {
			instance_destroy(tentacles[i]);
		}
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