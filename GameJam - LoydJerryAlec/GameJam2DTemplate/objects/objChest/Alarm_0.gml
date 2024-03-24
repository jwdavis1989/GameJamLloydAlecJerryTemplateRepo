/// @description Open Animation Completion
looted = true;
image_index = 3;
image_speed = 0;

obj_inventory.ammo_flamethrower += 1000;
obj_inventory.equipped_flamethrower = true;
obj_inventory.has_flamethrow = true;
objPlayer.equipped_weapon = instance_create(objPlayer.bulletAnchorX, objPlayer.bulletAnchorY, obj_gun_flamethrower);