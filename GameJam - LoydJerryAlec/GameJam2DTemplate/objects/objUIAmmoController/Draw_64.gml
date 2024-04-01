//Ammo Display
draw_set_font(fGangWolfikBlade12);
draw_text_colour(4, __view_get( e__VW.HView, 0 ) - 2 * sprite_get_height(sprUIAmmoRed)-12, string_hash_to_newline("Ammo:"), c_green, c_green, c_green, c_green, 1);
//Shell Sprites
if (instance_exists(objPlayer)) {
	var weapon = objPlayer.equipped_weapon;
	if (weapon.fully_automatic and weapon.currentAmmo){
		draw_sprite(weapon.ammo_ui_sprite, 0, sprite_get_width(weapon.ammo_ui_sprite)/2, anchorY);
		var drawX = 42
		draw_text_colour(drawX + sprite_get_width(weapon.ammo_ui_sprite)/2 ,anchorY, weapon.currentAmmo, c_green, c_green, c_green, c_green, 1)
	}
	else for (var i=0; i < weapon.currentAmmo / weapon.ammo_ui_per_sprite; i++) {
	    draw_sprite(weapon.ammo_ui_sprite, 0, (i * sprite_get_width(weapon.ammo_ui_sprite)/2) + sprite_get_width(weapon.ammo_ui_sprite)/2, anchorY);
	}
	//hp here for now
	var hp_percentage = objPlayer.hp/objPlayer.max_hp
	draw_text_colour(100,anchorY, string(hp_percentage*100)+" %", c_green, c_green, c_green, c_green, 1)
	for(var i =0; i < 100*(hp_percentage);i++)
		draw_text_colour(140+(i*3) ,anchorY, "I  ", c_green, c_green, c_green, c_green, 1)
}

// Keycard Displays
/*
// FOR STANDALONE KEYCARDS
if(objPlayer.keycards[0]){ // Player has first keycard
	draw_sprite(spr_keycard_1, 0, view_get_xport(0), view_get_yport(0));
}
if(objPlayer.keycards[1]){ // Player has second keycard
	draw_sprite(spr_keycard_2, 0, view_get_xport(0) + sprite_get_width(spr_keycard_1), view_get_yport(0));
}
if(objPlayer.keycards[2]){ // Player has third keycard
	draw_sprite(spr_keycard_3, 0, view_get_xport(0) + sprite_get_width(spr_keycard_1) * 2, view_get_yport(0));
}
*/

// FOR OMNI KEYCARDS
for(var i = 0; i < obj_inventory.keycard_amount; i++){
	if(obj_inventory.keycards[i]){ // Player has keycard
		draw_sprite(spr_keycard, i, view_get_xport(0) 
		+ sprite_get_width(spr_keycard) * i, view_get_yport(0));
	}
}
