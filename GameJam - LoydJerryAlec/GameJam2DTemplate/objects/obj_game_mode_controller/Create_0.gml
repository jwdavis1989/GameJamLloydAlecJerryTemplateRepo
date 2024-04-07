audio_stop_all();
audio_play_sound(bgm_SCPx2x, 3, 1, 0.75, 0, 0.75);
game_set_speed(30, gamespeed_fps);
objNightVisionCamera.visible = false;
debug = false;
current_round = 1;
gather_timer = 30 * 120;
repair_timer_max = 30 * 45;
repair_timer = repair_timer_max;
dungeon_alec_cleared = false;
dungeon_lloyd_cleared = false;
dungeon_jerry_cleared = false;
submarine_max_hp = 100;
submarine_hp = submarine_max_hp;
tentacles = [];
crack = noone;
tentacle_width = 3;
tentacle_height = 3;
tentacle_velocity = 4;
boss_receding = false;
boss_approaching = true;
boss_approaching_timer = 60;
boss_receding_timer = 60;
/*
Phase String List:
Defense: Spawning enemies
Gather: Gives timer until next defense round
Repair: Gives pause so player can repair sub
*/
phase = "Defense";
message = noone;
wave = 1;
wave_began = false;
wave_remaining = 0;
wave_remaining_max = 0;
minimum_spawn_cooldown = 30;
maximum_spawn_cooldown = 120;
spawn_timer = random_range(minimum_spawn_cooldown, maximum_spawn_cooldown);
spawn_tentacles_x = [192, 832];
spawn_tentacles_y = 384;
room_center_x = 512;
//Gives Leviathan time to grow sprite and latch onto sub, then attack begins!
leviathan_attack_animation_timer = 0;
//First time Defense set-up;
if (phase == "Defense") {
	alarm[1] = leviathan_attack_animation_timer;
	boss = instance_create(room_center_x, spawn_tentacles_y, obj_leviathan);
	alarm[5] = boss_approaching_timer;
	audio_play_sound(snd_snarling_growl, 2, 0, 1, 0, 2);
	message = create_static_message_at_depth("WARNING!", c_red, obj_helm.x, 
		obj_helm.y - sprite_get_height(spr_helm) / 2 - 10, 1, 1, -1001);
}

current_wave_1 = [{unit: obj_maggot, count: 10, spawn_time_interval: 15},
		  {unit: objOrb, count: 1, spawn_time_interval: 15}];
wave_1 = [{unit: obj_maggot, count: 10, spawn_time_interval: 15},
		  {unit: objOrb, count: 2, spawn_time_interval: 60}];
wave_2 = [{unit: USETHISONE_obj_shield_beetle, count: 1, spawn_time_interval: 30}, 
          {unit: obj_maggot, count: 10, spawn_time_interval: 45}];
wave_3 = [{unit: obj_maggot, count: 20, spawn_time_interval: 15}, 
		  {unit: USETHISONE_obj_shield_beetle, count: 2, spawn_time_interval: 15}];
wave_4 = [{unit: obj_maggot, count: 30, spawn_time_interval: 15}, 
		  {unit: USETHISONE_obj_shield_beetle, count: 4, spawn_time_interval: 15}];