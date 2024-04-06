/// @description Turn into smoke
var _smoke = instance_create(other.x, other.y, obj_smoke);
_smoke.image_xscale = other.image_xscale;
_smoke.image_yscale = other.image_yscale;
audio_play_sound_at(snd_flamerthrower, x, y, 0, 100, 300, 1, 0, 10, 1, 0.8);
//audio_play_sound(snd_flamerthrower, 1, 0, 1, 0.8);
instance_destroy(other);