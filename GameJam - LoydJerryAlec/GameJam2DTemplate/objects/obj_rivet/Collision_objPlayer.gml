/// @description Picking up rivets
obj_inventory.rivet_amount++;
audio_play_sound(snd_pickup_rivet, 10, false, 1, 0.05); // Play pickup sound
create_rising_message("Found Rivet", c_white, 38, objPlayer.x - sprite_get_width(spr_character_idle) / 2, 
	objPlayer.y - sprite_get_height(spr_character_idle) / 2, 1.2, 1.2);
instance_destroy(); // Remove rivet from level