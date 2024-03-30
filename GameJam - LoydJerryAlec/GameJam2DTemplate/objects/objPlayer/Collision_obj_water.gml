draw_set_color(c_blue);

// OXYGEN METER TEST
if(y - sprite_height / 2 > other.y){ // Player's head is below water
	underwater = true;
}else if(y < other.y){ // Player's midpoint is  above water
	underwater = false;
}