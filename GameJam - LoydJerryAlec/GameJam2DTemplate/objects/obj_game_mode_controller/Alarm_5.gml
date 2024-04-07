/// @description Boss Approaching Finished
boss_approaching = false;
tentacles[0] = instance_create(spawn_tentacles_x[0] - 64, spawn_tentacles_y, obj_leviathan_tentacle);
tentacles[1] = instance_create(spawn_tentacles_x[1] + 64, spawn_tentacles_y, obj_leviathan_tentacle);
for (var i=0; i<array_length(tentacles);i++) {
	tentacles[i].image_xscale = tentacle_width;
	tentacles[i].image_yscale = tentacle_height;
}
tentacles[0].image_xscale = -tentacle_width;
crack = instance_create(room_center_x, spawn_tentacles_y, obj_window_crack);
crack.depth = -998
crack.image_xscale = 4;
crack.image_yscale = 4;
objNightVisionCamera.visible = true;
audio_play_sound(snd_heal_2, 10, false, 2.5, 1.08, 0.5);
audio_play_sound(snd_heal_2, 10, false, 2.5, 1.08, 1);
instance_destroy(message);
message = noone;
message = create_static_message_at_depth("DEFEND YOURSELF!", c_red, obj_helm.x, 
		obj_helm.y - sprite_get_height(spr_helm) / 2 - 10, 1, 1, -1001);
leviathan_attack_animation_timer = 30 * 45;
alarm[1] = 5;