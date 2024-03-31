if(sprite_index == spr_window){ // window is undamaged
	sprite_index = spr_window_cracked_1; // window becomes stage 1 damaged
	alarm[0] = random_range(10,60); // reset timer
}
else if(sprite_index == spr_window_cracked_1){ // window is stage 1 damaged
	sprite_index = spr_window_cracked_2; // window becomes stage 2 damaged
	alarm[0] = random_range(10,60);
}

else if(sprite_index == spr_window_cracked_2){ // window is stage 2 damaged
	sprite_index = spr_window_cracked_3; // window becomes stage 3 damaged
	alarm[0] = random_range(10,60);
}