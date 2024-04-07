/// @description Insert description here
if (phase == "Defense") {
	if (!boss_receding) {
		if (!boss_approaching) {
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
			else if (wave_began && wave_remaining != 0) {
				//Move the icky wigglies
				if (tentacles[0].x < spawn_tentacles_x[0]) {
					tentacles[0].x += tentacle_velocity;
					tentacles[1].x -= tentacle_velocity;
				}	
			}
			else if (wave_remaining == 0){
				//phase = "Gather";
				//wave++;
				//wave_began = false;
				for (var i=0; i<array_length(tentacles);i++) {
					instance_destroy(tentacles[i]);
				}
				boss_receding = true;
				if (alarm[6] < 1) {
					audio_play_sound(snd_snarling_growl, 1, 0, 0.9, 0, random_range(0.75, 1));
					audio_play_sound(snd_snarling_growl, 1, 0, 0.9, 0, random_range(0.5, 0.75));	
				}
				alarm[6] = boss_receding_timer;
			}
		}
		else if (boss_approaching && alarm[5] > 0) {
				boss.image_xscale++;
				boss.image_yscale++;
		}
	}
	else if (boss_receding) {
		if (alarm[6] < 2) {
			audio_play_sound(snd_heal_2, 10, false, 2.5, 1.08, 0.5);
			audio_play_sound(snd_heal_2, 10, false, 2.5, 1.08, 1);	
		}
		if (alarm[6] > 0) {
			boss.image_xscale--;
			boss.image_yscale--;
			instance_destroy(message);
			message = noone;
			message = create_static_message_at_depth("Enemy Retreating . . .", c_green, obj_helm.x, 
		obj_helm.y - sprite_get_height(spr_helm) / 2 - 10, 1, 1, -1001);
		}
	}
}
else if (phase == "Gather") {
	//Give the player a timer to go get stuff, encourage them to pick a destination
	//Once timer is over, switch to repair phase.
	instance_destroy(message);
	message = noone;
	if (room_get_name(room) != "rmCentralHub"){
		gather_timer--;
	}
	else {
		gather_timer = gather_timer_max;	
	}
	if (gather_timer < 1) {
		phase = "Repair";
		objPlayer.underwater = false;
		objPlayer.oxygen_missing = 0;
		room_goto(rmCentralHub);
		objPlayer.x = 512;
		objPlayer.y = 576;
	}
}
else if (phase == "Repair") {
	//Repair submarine grace-period before next wave
	//When timer ends, increment wave to (wave + 1), then begin defense phase.
	if (repair_timer < 1) { 
		instance_destroy(message);
		message = noone;
		alarm[1] = leviathan_attack_animation_timer;
		boss.visible = true;
		alarm[5] = boss_approaching_timer;
		audio_play_sound(snd_snarling_growl, 2, 0, 1, 0, 2);
		message = create_static_message_at_depth("WARNING!", c_red, obj_helm.x, 
		obj_helm.y - sprite_get_height(spr_helm) / 2 - 10, 1, 1, -1001);
		phase = "Defense";
		repair_timer = repair_timer_max;
		wave_began = false;
		boss_approaching = true;
	}
	else {
		repair_timer--;
	}
}