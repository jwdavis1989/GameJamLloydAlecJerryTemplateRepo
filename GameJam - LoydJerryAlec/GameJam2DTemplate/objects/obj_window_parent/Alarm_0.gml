///@description Window becoming more broken
if(image_index != image_number - 1){ // Progress to next stage of broken
	object_play_3d_sound(snd_glass_crack, 0.8, 1.2, 2, 1)
	image_index++; // window becomes stage 1 damaged
	alarm[0] = random_range(20,60); // reset timer
}