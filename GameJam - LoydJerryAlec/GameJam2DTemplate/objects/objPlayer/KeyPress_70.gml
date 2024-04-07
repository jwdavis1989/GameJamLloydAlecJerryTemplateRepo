/// @description Use Med-Kit

if(hp < max_hp){ // Player missing hp
	if(obj_inventory.med_kits > 0){ // Player has health kit(s)
		audio_play_sound(snd_heal, 10, false, 1, 0.06);
		obj_inventory.med_kits--;
		hp += 30;
		if(hp > max_hp){
			hp = max_hp;
		}
	}else{
		create_rising_message("No Med-Kits", c_white, 38, objPlayer.x, 
		objPlayer.y - sprite_get_height(spr_character_idle) / 2, 1.2, 1.2);
	}
}else{ 
	create_rising_message("Health Full", c_white, 38, objPlayer.x, 
		objPlayer.y - sprite_get_height(spr_character_idle) / 2, 1.2, 1.2);
}