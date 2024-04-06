/// @description Heal player then disappear
if(other.hp < other.max_hp){
	audio_play_sound(snd_heal_2, 10, false, 2.5, 1.08, 1);
	other.hp += 15;
	if(other.hp > other.max_hp){
		other.hp = other.max_hp;
	}
	instance_destroy(self);
}