/// @description Play explosion
audio_play_sound(snd_explosion, 10, false);
var enemy_count = instance_number(objEnemyParent)
var enemy_list;
for(var i = 0; i < enemy_count; i++){
	enemy_list[i] = instance_find(objEnemyParent, i); // Find all enemies on the map
}

for(var i = 0; i < enemy_count; i++){
	// If enemy is in explosion's range
	if(distance_to_object(enemy_list[i]) <= obj_gun_grenade.pelletExplosiveRadius){ 
		enemy_list[i].hp -= obj_gun_grenade.damage / 2; // Take splash damage
	}
}