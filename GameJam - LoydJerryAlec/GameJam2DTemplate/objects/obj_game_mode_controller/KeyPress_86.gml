/// @description Spawns 3 Orb Bugs & Shield Beetle that is already aggro'd at twice the normal range.
spawn_monster_with_aggro(objPlayer.x + 2 * 384, objPlayer.y - 48, USETHISONE_obj_shield_beetle);
spawn_monster_with_aggro(objPlayer.x + 2 * 384, objPlayer.y - 48, objOrb);
spawn_monster_with_aggro(objPlayer.x + 2 * 384, objPlayer.y - 256, objOrb);
spawn_monster_with_aggro(objPlayer.x + 2 * 384, objPlayer.y + 256, objOrb);
spawn_elite_monster_with_aggro(objPlayer.x - 2 * 384, objPlayer.y + 128, objOrb);