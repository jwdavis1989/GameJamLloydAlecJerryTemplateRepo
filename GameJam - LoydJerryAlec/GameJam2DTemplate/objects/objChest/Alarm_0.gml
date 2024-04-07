/// @description Open Animation Completion
event_inherited();
looted = true;
image_index = 3;
image_speed = 0;

obj_inventory.add_weapon(loot);
create_rising_message("Got " + loot.name, c_white, 38, objPlayer.x, 
objPlayer.y - sprite_get_height(spr_character_idle) / 2, 1.2, 1.2);
// obj_inventory.add_weapon(obj_gun_flamethrower);

