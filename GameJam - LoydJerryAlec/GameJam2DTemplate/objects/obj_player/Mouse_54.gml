//Special Homing Missiles
if missiles >= 1 and not aiming_missile
{
    aiming_missile = true
    audio_play_sound(snd_missile_launch, 1, 0)
    instance_create(x, y, obj_missile_range_indicator)
    __background_set( e__BG.VSpeed, 0, 0 );
}

