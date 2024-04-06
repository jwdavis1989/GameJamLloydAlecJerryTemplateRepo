debug = false;
current_round = 1;
gather_timer = 30 * 60;
dungeon_alec_cleared = false;
dungeon_lloyd_cleared = false;
dungeon_jerry_cleared = false;
submarine_max_hp = 100;
submarine_hp = submarine_max_hp;
tentacles = [];
tentacle_width = 3;
tentacle_height = 3;
/*
Phase String List:
Defense: Spawning enemies
Gather: Gives timer until next defense round
Repair: Gives pause so player can repair sub
*/
phase = "Defense";
wave = 1;
wave_began = false;
wave_remaining = 0;
wave_remaining_max = 0;
//Gives Leviathan time to grow sprite and latch onto sub, then attack begins!
leviathan_attack_animation_timer = 120;
if (phase == "Defense") {
	alarm[1] = leviathan_attack_animation_timer;
}
minimum_spawn_cooldown = 30;
maximum_spawn_cooldown = 120;
spawn_timer = random_range(minimum_spawn_cooldown, maximum_spawn_cooldown);
spawn_tentacles_x = [192, 832];
spawn_tentacles_y = 384;

/*
Wave Object Structure:
unit: Unit type to spawn.
(Removed and replaced with pick_one(-1, 1))side: Which tentacle to spawn from. Left, Right, or Alternate between Left then Right.
count: Number to spawn.
spawn_time_interval: Period between each spawn.
*/
//current_wave = [{unit: noone, count: -1, spawn_time_interval: -1}, {unit: noone, count: -1, spawn_time_interval: -1}];
current_wave_1 = [{unit: obj_maggot, count: 10, spawn_time_interval: 15},
		  {unit: objOrb, count: 1, spawn_time_interval: 15}];
wave_1 = [{unit: obj_maggot, count: 10, spawn_time_interval: 15},
		  {unit: objOrb, count: 2, spawn_time_interval: 60}];
wave_2 = [{unit: USETHISONE_obj_shield_beetle, count: 1, spawn_time_interval: 30}, 
          {unit: objOrb, count: 10, spawn_time_interval: 45}];
wave_3 = [{unit: obj_maggot, count: 20, spawn_time_interval: 15}, 
		  {unit: USETHISONE_obj_shield_beetle, count: 2, spawn_time_interval: 15}];
wave_4 = [{unit: obj_maggot, count: 20, spawn_time_interval: 15}, 
		  {unit: USETHISONE_obj_shield_beetle, count: 4, spawn_time_interval: 15}];
