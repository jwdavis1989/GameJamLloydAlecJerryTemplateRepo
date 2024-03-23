/*
if (hp < 1) {
    instance_create(x, y, objExplosion);
    instance_destroy(self);
}
*/

//Aggro
if (distance_to_object(objPlayer) < aggroRange && !aggro) {
    aggro = true;
    audio_play_sound(snd_alarm, 1, 0);
}

/* */
/*  */
