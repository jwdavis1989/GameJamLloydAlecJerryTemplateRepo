player_close = true;
open = true;
image_speed = 1; // Play opening animation
if(instance_exists(blocker)){
	instance_destroy(blocker); // Allow player to pass through
}



/*
if(!open && objPlayer.x > x - sprite_width / 2){ // Player is near front
	show_debug_message("PLAYER CLOSE");
	open = true;
	image_speed = 1;
	if(instance_exists(blocker)){
		instance_destroy(blocker); // Allow player to pass through
	}
// Player is walking away
}else if(open && objPlayer.x + sprite_get_width(spr_character_idle) / 2 > x + sprite_width){
	show_debug_message("PLAYER FAR");
	open = false;
	blocker = instance_create(x, y, obj_door_blocker); // Recreate blocker
	blocker.image_xscale = image_xscale;
	blocker.image_yscale = image_yscale;
	image_speed = -1;
	alarm[0] = image_number; // Handle reversing animation
}
*/



// OXYGEN METER TEST
/*
if(y - sprite_height / 2 > other.y){ // Player's head is below water
	underwater = true;
}else if(y < other.y){ // Player's midpoint is  above water
	underwater = false;
}
*/