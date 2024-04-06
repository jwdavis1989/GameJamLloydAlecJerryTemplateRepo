/// @description Picking up rivets
obj_inventory.rivet_amount++;
audio_play_sound(snd_pickup_rivet, 10, false, 1, 0.3, random_range(0.8, 1.2)); // Play pickup sound
create_rising_message("Found Rivet", c_white, 38, objPlayer.x, 
	objPlayer.y - sprite_get_height(spr_character_idle) / 2, 1.2, 1.2);
instance_destroy(); // Remove rivet from level