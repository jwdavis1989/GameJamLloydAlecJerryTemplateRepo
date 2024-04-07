if (!invulnerable) {
    if (hp > 1) {
        audio_play_sound(snd_explosion, 1, 0);
        hp -= other.damage;
        //Set invulnerability timer
        alarm[10] = invulnerable_duration;
        invulnerable = true;
    }
}
