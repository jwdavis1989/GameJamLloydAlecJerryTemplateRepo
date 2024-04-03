/// @description Firing Timer
instance_create(x, y, objOrbProjectile);
glow.image_xscale = 1;
glow.image_yscale = 1;
audio_play_sound_at(snd_basic_shot, x, y, 0, 100, 300, 1, 0,  2, 1, 0, random_range(0.8, 1.2));
alarm[2] = random_range(20, 30);

