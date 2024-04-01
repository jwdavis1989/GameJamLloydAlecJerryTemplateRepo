if(open && !place_meeting(x, y, objPlayer)){ // If door is open and not colliding with player
	open = false;
	blocker = instance_create(x, y, obj_door_blocker); // Recreate blocker
	blocker.image_xscale = image_xscale;
	blocker.image_yscale = image_yscale;
	image_speed = -1;
	alarm[0] = image_index * gamespeed_microseconds; // Handle stopping reverse animation
}