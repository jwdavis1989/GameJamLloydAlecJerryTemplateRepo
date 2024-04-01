/// @description Init methods/properties
weapons = []
weapons_count = 0;
current_weapon = 0

// adds and equips the passed weapon
add_weapon = function (_add_val) 
{
	objPlayer.equipped_weapon = instance_create(objPlayer.bulletAnchorX, objPlayer.bulletAnchorY, _add_val);
	weapons[weapons_count] = objPlayer.equipped_weapon;
	weapons_count += 1;
	current_weapon = weapons_count - 1;
}
// Adding the initial default weapon here
add_weapon(obj_gun_base_shotgun);

//  equips 1st weapon for button 1, 2nd for 2, etc.
switch_weapon_to = function (_weapon_button)
{
	if(_weapon_button <= weapons_count && !objPlayer.equipped_weapon.reloading)
	{
		current_weapon = _weapon_button - 1;
		objPlayer.equipped_weapon = weapons[current_weapon];
	}
}
// cycles current weapon down
switch_weapon_down = function ()
{
	if(weapons_count == 0 || objPlayer.equipped_weapon.reloading)
	{
		//do nothing
	}else if(current_weapon == 0)
	{
		current_weapon = weapons_count-1;
		objPlayer.equipped_weapon = weapons[current_weapon]
	}else
	{
		current_weapon -= 1;
		objPlayer.equipped_weapon = weapons[current_weapon]
	}
}
// cycles current weapon up
switch_weapon_up = function ()
{
	if(weapons_count == 0 || objPlayer.equipped_weapon.reloading)
	{
		//do nothing
	}else if (current_weapon == weapons_count-1)
	{
		current_weapon = 0;
		objPlayer.equipped_weapon = weapons[current_weapon]
	}else
	{
		current_weapon += 1;
		objPlayer.equipped_weapon = weapons[current_weapon]
	}
}

// Keycards
keycard_amount = 3;
for(var i = 0; i < keycard_amount; i++){
	keycards[i] = false;
}

// Scrap & Rivets
scrap_amount = 0;
rivet_amount = 0;