/// @description Atk after Melee Charge Duration
alarm[1] = melee_animation_duration;
currently_melee_animating = true;
currently_melee_charging = false;
//image_speed = dashing_image_speed;
vel_y = movement_speed * ((objPlayer.y>y)?1:-1)
vel_x = charge_movement_speed_multiplier * movement_speed
vel_x = ((objPlayer.x > x)? vel_x:-vel_x)
sprite_index = spr_shark_attack
//audio_play_sound(snd_bottle_rocket, 2, 0, 1, 0, 2);
//Animation change to melee attack