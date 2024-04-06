/// @description Begin Morphing
cocoon = instance_create(x, y, obj_maggot_cocoon);
audio_play_sound_at(snd_door_creak, x, y, 0, 100, 300, 1, 0, 2, 0.5, 0, random_range(8, 10));
effect_create_depth(-1003, ef_firework, x, y, 0, c_red);
effect_create_depth(-1003, ef_smokeup, x, y, 1, c_green);
audio_play_sound_at(snd_bug_noise, x, y, 0, 100, 300, 1, 0, 2, 1, 0, 3);
cocoon.spawned = spawned;	
instance_destroy(self);