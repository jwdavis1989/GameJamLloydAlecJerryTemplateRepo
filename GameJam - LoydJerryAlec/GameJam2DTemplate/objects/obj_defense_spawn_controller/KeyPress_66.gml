/// @description Spawns an Elite Shield Beetle left or right of the player.
x_offset_multiplier = choose(-1, 1);
spawn_elite_monster_with_aggro(objPlayer.x - (384 * x_offset_multiplier), objPlayer.y - 64, USETHISONE_obj_shield_beetle);