/// @description Charging Timer
audio_play_sound_at(snd_bug_noise, x, y, 0, 100, 300, 1, 0,  2, 1, 0, random_range(0.8, 1.2));
glow.image_xscale = 2;
glow.image_yscale = 2;
effect_create_depth(-1002, ef_flare, x, y, 1, c_red);
alarm[3] = 15;

