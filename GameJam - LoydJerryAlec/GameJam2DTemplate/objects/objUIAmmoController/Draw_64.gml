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
	draw_text_colour(100, anchorY - 15, "HEALTH", c_green, c_green, c_green, c_green, 1);
	var hp_percentage = objPlayer.hp/objPlayer.max_hp
	draw_text_colour(100,anchorY, string(round(hp_percentage*100))+" %", c_green, c_green, c_green, c_green, 1)
	for(var i =0; i < 100*(hp_percentage);i++)
		draw_text_colour(140+(i*3) ,anchorY, "I  ", c_green, c_green, c_green, c_green, 1)
}

//Oxygen Bar GUI
//if(objPlayer.oxygen_missing > 0){ // Only display while player is missing oxygen
if (obj_game_mode_controller.phase == "Gather") {
	draw_text_colour(500, anchorY - 15, "OXYGEN", c_blue, c_blue, c_blue, c_blue, 1);
	var oxygen_percentage = (objPlayer.oxygen_max - objPlayer.oxygen_missing) / objPlayer.oxygen_max
	draw_text_colour(500, anchorY, string(round(oxygen_percentage * 100)) +" %", c_blue, c_blue, c_blue, c_blue, 1)
	for(var i = 0; i < 100 * (oxygen_percentage); i++){
		draw_text_colour(540 + (i * 3), anchorY, "I  ", c_blue, c_blue, c_blue, c_blue, 1);
	}
}
if (objPlayer.equipped_weapon.currentAmmo < 1) {
	var holdX = x
	x = 22
    draw_self();
	x=holdX
}
// Keycard Display
/* Top-Left Display
for(var i = 0; i < obj_inventory.keycard_amount; i++){
	if(obj_inventory.keycards[i]){ // Player has keycard
		draw_sprite(spr_keycard, i, view_get_xport(0) 
		+ sprite_get_width(spr_keycard) * i, view_get_yport(0));
	}
}
*/
// Right of Oxygen Display
if(obj_inventory.keycards[2]){ // Player has level 3 keycard
	draw_sprite(spr_keycard, 2, 500 + 380, anchorY - sprite_get_height(spr_keycard) / 2 + 5);
}else if(obj_inventory.keycards[1]){ // Player has level 2 keycard
	draw_sprite(spr_keycard, 1, 500 + 380, anchorY - sprite_get_height(spr_keycard) / 2 + 5);
}else if(obj_inventory.keycards[0]){ // Player has level 1 keycard
	draw_sprite(spr_keycard, 0, 500 + 380, anchorY - sprite_get_height(spr_keycard) / 2 + 5);
}

// Scrap Display
// 5 or less scrap
if(obj_inventory.scrap_amount < 6){
	for(var i = 0; i < obj_inventory.scrap_amount; i++){
		draw_sprite(spr_scrap, 0, view_get_xport(0) + 
		view_get_wport(0) -  sprite_get_width(spr_scrap) / 2 * 5 + 15 * i, 
		view_get_yport(0) + sprite_get_height(spr_scrap) / 2);
	}
}else{ // 6 or more scrap
	draw_sprite(spr_scrap, 0, view_get_xport(0) + 
	view_get_wport(0) -  sprite_get_width(spr_scrap) / 2 * 5, 
	view_get_yport(0) + sprite_get_height(spr_scrap) / 2);
	
	draw_set_color(c_white);
	draw_text_transformed(view_get_xport(0) + view_get_wport(0) -  sprite_get_width(spr_scrap) / 2 * 4 + 5,
	view_get_yport(0) + sprite_get_height(spr_scrap) / 2 - 12, "X " + string(obj_inventory.scrap_amount),
	2, 2, image_angle);
}

// Rivet Display
// 5 or less rivets
if(obj_inventory.rivet_amount < 6){
	for(var i = 0; i < obj_inventory.rivet_amount; i++){
		draw_sprite(spr_rivet, 0, view_get_xport(0) + 
		view_get_wport(0) -  sprite_get_width(spr_rivet) / 2 * 5 + 15 * i, 
		view_get_yport(0) + sprite_get_height(spr_rivet) / 2 + sprite_get_height(spr_rivet));
	}
}else{ // 6 or more rivets
	draw_sprite(spr_rivet, 0, view_get_xport(0) + 
	view_get_wport(0) -  sprite_get_width(spr_scrap) / 2 * 5, 
	view_get_yport(0) + sprite_get_height(spr_scrap) / 2 + sprite_get_height(spr_rivet));
	
	draw_set_color(c_white);
	draw_text_transformed(view_get_xport(0) + view_get_wport(0) - sprite_get_width(spr_scrap) / 2 * 4 + 5,
	view_get_yport(0) + sprite_get_height(spr_scrap) / 2  + 
	sprite_get_height(spr_rivet) - 12, "X " + 
	string(obj_inventory.rivet_amount),2, 2, image_angle);
}

// Med-kit Display
// 5 or less Med-kits
if(obj_inventory.med_kits < 6){
	for(var i = 0; i < obj_inventory.med_kits; i++){
		draw_sprite(spr_med_kit, 0, view_get_xport(0) + 
		view_get_wport(0) -  sprite_get_width(spr_med_kit) / 2 * 5 + 15 * i, 
		view_get_yport(0) + sprite_get_height(spr_rivet) / 2 + sprite_get_height(spr_rivet) 
		+ sprite_get_height(spr_med_kit));
	}
}else{ // 6 or more Med-kits
	draw_sprite(spr_med_kit, 0, view_get_xport(0) + 
	view_get_wport(0) -  sprite_get_width(spr_med_kit) / 2 * 5, 
	view_get_yport(0) + sprite_get_height(spr_scrap) / 2 + sprite_get_height(spr_rivet) 
	+ sprite_get_height(spr_med_kit));
	
	draw_set_color(c_white);
	draw_text_transformed(view_get_xport(0) + view_get_wport(0) - sprite_get_width(spr_scrap) / 2 * 4 + 5,
	view_get_yport(0) + sprite_get_height(spr_scrap) / 2  + 
	sprite_get_height(spr_rivet) - 12 + sprite_get_height(spr_med_kit) + 8, "X " + 
	string(obj_inventory.med_kits),2, 2, image_angle);
}

// Oxygen Tank Display
/*
if(obj_inventory.oxygen_tanks > 0){
	draw_sprite(spr_oxygen_tank_submarine, 0, view_get_xport(0) + 
	view_get_wport(0) -  sprite_get_width(spr_scrap) / 2 * 5, 
	view_get_yport(0) + sprite_get_height(spr_scrap) / 2 + sprite_get_height(spr_rivet) + 
	sprite_get_height(spr_oxygen_tank_submarine) + 12);
	
	draw_set_color(c_white);
	draw_text_transformed(view_get_xport(0) + view_get_wport(0) - sprite_get_width(spr_scrap) / 2 * 4 + 5,
	view_get_yport(0) + sprite_get_height(spr_scrap) / 2  + 
	sprite_get_height(spr_rivet) - 12 + sprite_get_height(spr_oxygen_tank_submarine) + 12, "X " + 
	string(obj_inventory.oxygen_tanks),2, 2, image_angle);
}
*/
