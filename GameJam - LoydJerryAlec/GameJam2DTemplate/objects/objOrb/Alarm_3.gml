/// @description Firing Timer
instance_create(x, y, objOrbProjectile);
glow.image_xscale = 1;
glow.image_yscale = 1;
audio_play_sound(snd_basic_shot, 2, 0);
alarm[2] = random_range(20, 30);

