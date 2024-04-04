/// @description Finish Morphing
effect_create_depth(-1003, ef_firework, x, y, 0, c_red);
effect_create_depth(-1003, ef_explosion, x, y, 0, c_red);
audio_play_sound_at(snd_bug_noise, x, y, 0, 100, 300, 1, 0,  2, 1, 0, 3);
image_xscale = 1;
image_yscale = 1;
sprite_index = spr_orb_gun_bug;
ascending = true;
alarm[1] = ascending_duration;