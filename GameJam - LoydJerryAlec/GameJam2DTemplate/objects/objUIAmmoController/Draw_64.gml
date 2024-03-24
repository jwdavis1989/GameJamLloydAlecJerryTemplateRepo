//Ammo Display
draw_set_font(fGangWolfikBlade12);
draw_text_colour(4, __view_get( e__VW.HView, 0 ) - 2 * sprite_get_height(sprUIAmmoRed), string_hash_to_newline("Ammo:"), c_green, c_green, c_green, c_green, 1);
//Shell Sprites
if (instance_exists(objPlayer)) {
	var weapon = objPlayer.equipped_weapon;
	for (var i=0; i < weapon.currentAmmo / weapon.ammo_ui_per_sprite; i++) {
	    draw_sprite(weapon.ammo_ui_sprite, 0, (i * sprite_get_width(weapon.ammo_ui_sprite)/2) + sprite_get_width(weapon.ammo_ui_sprite)/2, anchorY);
	}
}

