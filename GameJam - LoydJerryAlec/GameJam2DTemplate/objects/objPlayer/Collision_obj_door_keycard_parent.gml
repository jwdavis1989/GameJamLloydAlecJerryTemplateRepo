if(key_interact){
	if(keycards[other.level - 1]){ // Player has corresponding keycard
		other.image_index = 1; // Open door
	}
	else{
		show_message(string("You don't have the level {0} keycard.", other.level));
	}
}