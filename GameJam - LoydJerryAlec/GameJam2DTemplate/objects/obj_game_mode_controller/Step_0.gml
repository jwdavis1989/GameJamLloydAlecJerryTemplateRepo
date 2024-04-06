/// @description Insert description here
if (phase == "Defense" && !boss_approaching && !boss_receding) {
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
		audio_play_sound(snd_snarling_growl, 1, 0, 0.9, 0, random_range(0.5, 0.75));
	}
	else if (wave_began && wave_remaining != 0 && !boss_receding) {
		//Move the icky wigglies
		if (tentacles[0].x < spawn_tentacles_x[0]) {
			tentacles[0].x += tentacle_velocity;
			tentacles[1].x -= tentacle_velocity;
		}	
	}
	else if (wave_remaining == 0 && !boss_receding){
		//phase = "Gather";
		//wave++;
		//wave_began = false;
		for (var i=0; i<array_length(tentacles);i++) {
			instance_destroy(tentacles[i]);
		}
		boss_receding = true;
		alarm[6] = boss_receding_timer;
	}
}
else if (phase == "Defense" && boss_approaching && alarm[5] > 0) {
		//obj_leviathan.image_xscale++;
		//obj_leviathan.image_yscale++;
}
else if (phase == "Gather") {
	//Give the player a timer to go get stuff, encourage them to pick a destination
	//Once timer is over, switch to repair phase.
}
else if (phase == "Repair") {
	//Repair submarine grace-period before next wave
	//When timer ends, increment wave to (wave + 1), then begin defense phase.
}