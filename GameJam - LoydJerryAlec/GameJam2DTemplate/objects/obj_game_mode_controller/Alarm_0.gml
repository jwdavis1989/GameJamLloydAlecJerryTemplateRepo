/// @description Orb Bug Spawn Timer
spawn_timer = random_range(minimum_spawn_cooldown, maximum_spawn_cooldown);
spawn_monster_with_aggro(objPlayer.x, objPlayer.y, objOrb);

alarm[0] = spawn_timer;