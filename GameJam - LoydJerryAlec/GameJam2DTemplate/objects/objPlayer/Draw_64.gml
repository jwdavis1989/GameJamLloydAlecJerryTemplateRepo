draw_set_color(c_blue);

// OXYGEN METER TEST
if(y > 540){ // If below water height in scratchpad room
	draw_rectangle(x - 50, y - 75, x + 50 - oxygen_missing, y - 50, false); // bar gets shorter while in water
	if(oxygen_missing < 100){
		oxygen_missing += 1;
	}
}

if(y < 540){ // Player is out of the water
	oxygen_missing = 0; // Reset oxygen
}

if(keycards[0]){ // Player has first keycard
	draw_sprite(spr_keycard_1, 0, x - 100, y - 100);
}