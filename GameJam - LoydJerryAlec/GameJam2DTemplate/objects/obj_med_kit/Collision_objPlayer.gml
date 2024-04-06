//// @description Picking up med kits
obj_inventory.med_kits++;
audio_play_sound(snd_pickup_med_kit, 10, false, 1, 0.68, random_range(0.8, 1.2)); // Play pickup sound
create_rising_message("Found Med-Kit", c_white, 38, objPlayer.x, 
	objPlayer.y - sprite_get_height(spr_character_idle) / 2, 1.2, 1.2);
instance_destroy(); // Remove med-kit from level