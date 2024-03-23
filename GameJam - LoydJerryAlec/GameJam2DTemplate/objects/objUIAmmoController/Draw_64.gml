//Ammo Display
draw_set_font(fGangWolfikBlade12);
draw_text_colour(4, __view_get( e__VW.HView, 0 ) - 2 * sprite_get_height(sprUIAmmoRed), string_hash_to_newline("Ammo:"), c_green, c_green, c_green, c_green, 1);
//Shell Sprites
if (instance_exists(objPlayer)) {
    for (var i=0; i < objPlayer.currentAmmo; i++) {
        draw_sprite(sprUIAmmoRed, 0, (i * sprite_get_width(sprUIAmmoRed)/2) + sprite_get_width(sprUIAmmoRed)/2, anchorY);
    }
}

