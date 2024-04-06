/// @description Open Animation Completion
event_inherited();
looted = true;
image_index = 2;
image_speed = 0;

//Add Resource Item to Inventory
if(loot == obj_rivet){
	loot_amount = round(random_range(3, 6)); // Get 3 - 6 rivets
}else if(loot == obj_scrap){
	loot_amount = round(random_range(1, 3)); // Get 1 - 3 scrap
}else if(loot == obj_med_kit){
	loot_amount = round(random_range(1, 2)); // Get 1 - 2 med-kits
}

