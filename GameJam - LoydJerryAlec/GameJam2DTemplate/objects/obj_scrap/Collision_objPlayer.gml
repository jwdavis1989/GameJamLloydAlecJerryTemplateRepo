/// @description Picking up scrap
obj_inventory.scrap_amount++;
audio_play_sound(snd_pickup_scrap, 10, false); // Play pickup sound
create_rising_message("Found Scrap", c_white, 38, objPlayer.x - sprite_get_width(spr_character_idle) / 2, 
	objPlayer.y - sprite_get_height(spr_character_idle) / 2, 1.2, 1.2);
instance_destroy(); // Remove scrap from level