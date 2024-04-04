//Aggro
if (distance_to_object(objPlayer) < aggroRange && !aggro) {
    aggro = true;
    audio_play_sound_at(snd_alarm, x, y, 0, 100, 300, 1, 0, 1, 1, 0, random_range(1, 1.5));
}

/* */
/*  */
