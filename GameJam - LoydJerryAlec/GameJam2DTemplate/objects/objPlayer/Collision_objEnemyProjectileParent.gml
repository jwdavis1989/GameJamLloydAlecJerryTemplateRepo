if (!invulnerable) {
    if (hp > 1) {
        audio_play_sound(snd_explosion, 1, 0);
        hp -= other.damage;
        //Set invulnerability timer
        alarm[10] = 15;
        invulnerable = true;
    }
    /*
    else
    {
        //Game Over Man!
        sprite_index = spr_invis;
        visible = false;
        control_locked = true;
        alarm[9] = 30;
        instance_create(x, y, obj_explosion_large);
        dead = true;
    }
    */
}

/* */
/*  */
