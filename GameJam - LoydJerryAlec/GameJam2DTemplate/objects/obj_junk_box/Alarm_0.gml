/// @description Open Animation Completion
looted = true;
image_index = 2;
image_speed = 0;

//Add Resource Item to Inventory
// Crashes when using else if 
if(loot == obj_rivet){
	loot_amount = round(random_range(3, 6)); // Get 3 - 6 rivets
}if(loot == obj_scrap){
	loot_amount = round(random_range(1, 3)); // Get 1 - 3 scrap
}if(loot == obj_med_kit){
	loot_amount = round(random_range(1, 2)); // Get 1 - 2 med-kits
}

var spawned_loot = noone;
for(i = 0; i < loot_amount; i++){
	spawned_loot = instance_create(x, y - sprite_get_height(spr_character_idle) - 10, loot);
	spawned_loot.velx =  round(random_range(-10, 10));
	spawned_loot.vel_y =  round(random_range(2, 3));
}
