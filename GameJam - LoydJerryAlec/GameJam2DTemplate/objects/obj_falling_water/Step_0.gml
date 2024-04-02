y += 1; // Water falls towards bottom
image_xscale += 0.2; // Gets bigger as it falls
image_yscale += 1; 
time_alive--;
if(time_alive == 0){
	instance_destroy();
}

// original x_scale 0.5