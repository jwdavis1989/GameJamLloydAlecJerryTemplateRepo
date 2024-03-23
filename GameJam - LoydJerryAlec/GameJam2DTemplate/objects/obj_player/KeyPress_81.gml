if (form == 0) {
    if (ship_weapon > 0) {
        ship_weapon--;
    }
    else {
        ship_weapon = 2;
    }
}
else {
    if (mech_weapon > 0) {
        mech_weapon--;
    }
    else {
        mech_weapon = 2;
    }
}

audio_play_sound(snd_mech_transform_to_air, 0, 0)

