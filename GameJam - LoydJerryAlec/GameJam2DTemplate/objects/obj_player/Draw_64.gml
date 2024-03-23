draw_set_alpha(0.75);
draw_rectangle_colour(room_width - 72, __view_get( e__VW.HPort, 0 ) - 96, room_width + 128, __view_get( e__VW.HPort, 0 ) + 48, c_black, c_black, c_black, c_black, false);
draw_set_alpha(1);
draw_text(room_width - 64, __view_get( e__VW.HPort, 0 ) - 80, string_hash_to_newline("Phoenix Missiles: " + string(missiles)));

//Weapon Select
if form == 0 { //Jet
    draw_text_colour(room_width - 64, __view_get( e__VW.HPort, 0 ) - 64, string_hash_to_newline("Cannon"), c_white, c_white, c_white, c_white, 100); 
    draw_text_colour(room_width - 64, __view_get( e__VW.HPort, 0 ) - 48, string_hash_to_newline("Autocannon"), c_white, c_white, c_white, c_white, 100); 
    draw_text_colour(room_width - 64, __view_get( e__VW.HPort, 0 ) - 32, string_hash_to_newline("Shotgun"), c_white, c_white, c_white, c_white, 100);  
    if ship_weapon == 0 { //Cannon
        draw_text_colour(room_width - 64, __view_get( e__VW.HPort, 0 ) - 64, string_hash_to_newline("Cannon"), c_red, c_red, c_red, c_red, 100); 
    }
    else if ship_weapon == 1 { //Autocannon
        draw_text_colour(room_width - 64, __view_get( e__VW.HPort, 0 ) - 48, string_hash_to_newline("Autocannon"), c_red, c_red, c_red, c_red, 100); 
    }
    else { //Shotgun
        draw_text_colour(room_width - 64, __view_get( e__VW.HPort, 0 ) - 32, string_hash_to_newline("Shotgun"), c_red, c_red, c_red, c_red, 100);  
    }
}
else { //Mech
    draw_text_colour(room_width - 64, __view_get( e__VW.HPort, 0 ) - 64, string_hash_to_newline("Cannon"), c_white, c_white, c_white, c_white, 100); 
    draw_text_colour(room_width - 64, __view_get( e__VW.HPort, 0 ) - 48, string_hash_to_newline("Missiles"), c_white, c_white, c_white, c_white, 100); 
    draw_text_colour(room_width - 64, __view_get( e__VW.HPort, 0 ) - 32, string_hash_to_newline("Lasers"), c_white, c_white, c_white, c_white, 100);  
    if mech_weapon == 0 { //Cannon
        draw_text_colour(room_width - 64, __view_get( e__VW.HPort, 0 ) - 64, string_hash_to_newline("Cannon"), c_red, c_red, c_red, c_red, 100); 
    }
    else if mech_weapon == 1 { //Missiles
        draw_text_colour(room_width - 64, __view_get( e__VW.HPort, 0 ) - 48, string_hash_to_newline("Missiles"), c_red, c_red, c_red, c_red, 100); 
    }
    else { //Laser
        draw_text_colour(room_width - 64, __view_get( e__VW.HPort, 0 ) - 32, string_hash_to_newline("Lasers"), c_red, c_red, c_red, c_red, 100);  
    }
}

//Lives
draw_text_colour(room_width - 64, __view_get( e__VW.HPort, 0 ), string_hash_to_newline("Health: "), c_white, c_white, c_white, c_white, 100); 
for (var i = 0; i < lives; i += 1) {
    draw_sprite_stretched(spr_jet_shadow_new, 0, room_width - (i * -lives_size) - 64, __view_get( e__VW.HPort, 0 ) + 16, lives_size/2, lives_size/2);
}

//Scoreboard
draw_text_colour(16, 16, string_hash_to_newline("Score: " + string(playerScore)), c_white, c_white, c_white, c_white, 100); 

//Boss Health
if (inBossFight) {
    var magicNumber = __view_get( e__VW.WPort, 0 )/4 + room_width; //Somehow sets it to the far right edge of screen(???)
    var barLeft = 16;
    var barRight = room_width/3;
    var textCenter = barLeft;
    draw_healthbar(barLeft, __view_get( e__VW.HPort, 0 ) + 16, barRight, __view_get( e__VW.HPort, 0 ) + 48, bossHP/bossMaxHP * 100, c_black, c_red, c_orange, 0, true, true);
    draw_text_colour(textCenter, __view_get( e__VW.HPort, 0 ) + 32, string_hash_to_newline("  BOSS:" + string(bossName) + " " + string(bossHP) + "/" + string(bossMaxHP)), c_white, c_white, c_white, c_white, 100); 
}

