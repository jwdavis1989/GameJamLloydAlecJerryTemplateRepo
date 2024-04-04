// Draw oxygen tank if player has one
if(obj_inventory.oxygen_tanks > 0){
	if(facing = "right"){
		draw_sprite_ext(spr_oxygen_tank_submarine, 0, x - sprite_get_width(spr_oxygen_tank_submarine) / 2, 
			y - sprite_get_height(spr_oxygen_tank_submarine) / 2, 0.8, 0.8, image_angle, c_white, 1);
	}else if(facing = "left"){
		draw_sprite_ext(spr_oxygen_tank_submarine, 0, x - sprite_get_width(spr_oxygen_tank_submarine) / 3, 
			y - sprite_get_height(spr_oxygen_tank_submarine) / 2, 0.8, 0.8, image_angle, c_white, 1);
	}
}

//Invulnerability Flicker
if (alarm[10] > 0 and alarm[10]%4 == 0) {
    //
	shader_set(shd_draw_only_cyan);
	draw_self();
	shader_reset();
}
else {
    draw_self();
}

/*
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

	*/
	
	
	// Oxygen Bar Display
	/*
	if(underwater){
		// ORIGINAL OXYGEN BAR
		
		draw_set_color(c_blue);
		draw_rectangle(x - 50, y - 65, x + 50 - (oxygen_missing / oxygen_max * 100), y - 50, false);
		if(oxygen_missing < oxygen_max){ // Bar gets shorter while underwater
			oxygen_missing += 1;
		}
		
		// OXYGEN TANK OXYGEN BAR TEST
		draw_sprite_part(spr_oxygen_tank, 0, 0, 0, sprite_get_width(spr_oxygen_tank), 
			oxygen_max - oxygen_missing, x - 50 , y - 50);
		if(oxygen_missing < oxygen_max){
			oxygen_missing += 1;
		}
		
	}
	*/
	
	
	/*
	// KEYCARD DISPLAY TEST CODE
	if(keycards[0]){ // Player has first keycard
		draw_sprite(spr_keycard_1, 0, x - 200, y - 100);
	}
	if(keycards[1]){ // Player has second keycard
		draw_sprite(spr_keycard_2, 0, x - 150, y - 100);
	}
	*/