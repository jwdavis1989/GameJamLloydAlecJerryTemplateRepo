if (!invulnerable) {
    instance_create(x, y, obj_explosion_small)
    alarm[11] = 5
    if (lives == 1) {
        sprite_index = spr_invis;
        control_locked = true;
        instance_destroy(obj_player_shadow);
        if instance_exists(obj_mech_legs) {
            instance_destroy(obj_mech_legs);
        }
    }
}

