/// @description Rapid Fire Ship Shells
if rapid_fire
{
    instance_create(x, y - 10, obj_jet_bullet_auto)
    alarm[0] = 5
    alarm[2] = 5
    audio_play_sound(snd_energy_shot, 2, 0)
}

