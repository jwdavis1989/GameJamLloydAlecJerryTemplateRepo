if(instance_exists(objUIAmmoController)){
	if(objPlayer.keycards[0]){ // Player has first keycard
		draw_sprite(spr_keycard_1, 0, objUIAmmoController.anchorX, objUIAmmoController.anchorX);
	}
	if(objPlayer.keycards[1]){ // Player has second keycard
		draw_sprite(spr_keycard_2, 0, objUIAmmoController.anchorX + sprite_get_width(spr_keycard_1), objUIAmmoController.anchorX);
	}
}