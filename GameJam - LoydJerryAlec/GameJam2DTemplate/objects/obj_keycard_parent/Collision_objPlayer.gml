/// @description Picking up keycard
if(level > 0){
	obj_inventory.keycards[level - 1] = true; // Mark keycard as found
	instance_destroy(); // Remove keycard from level
}
else{
	show_message(string("Error: Level {0} keycard found", level));
}