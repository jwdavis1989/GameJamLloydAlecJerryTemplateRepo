/// @description Turn into smoke
var _smoke = instance_create(other.x, other.y, obj_smoke);
_smoke.image_xscale = other.image_xscale;
_smoke.image_yscale = other.image_yscale;
audio_play_sound(snd_flamerthrower, 1, 0, 1, 0.8);
instance_destroy(other);