if (interacted && !animating){
    //Animate Opening
    alarm[0] = 10;
    animating = true;
    audio_play_sound(snd_ruin_door_open, 2, 0)
    sprite_index = spr_scifi_chest_open;
}

