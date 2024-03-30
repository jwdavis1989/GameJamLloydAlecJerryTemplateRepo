if(image_index == 0){
	image_speed = abs(image_speed); //set eye to normal animation when eye is opened
}

if (image_index >= image_number - 1){
	image_speed *= -1; //set eye to reverse animation when eye is closed
}