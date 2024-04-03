///@description Window becoming more broken
if(image_index != image_number - 1){ // Progress to next stage of broken
	image_index++; // window becomes stage 1 damaged
	alarm[0] = random_range(10,60); // reset timer
}