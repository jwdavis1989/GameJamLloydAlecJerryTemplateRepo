if(other.level > 0){
	keycards[other.level - 1] = true; // Mark keycard as found
	instance_destroy(other); // Remove keycard from level
}
else{
	show_message(string("Error: Level {0} keycard found", level));
}