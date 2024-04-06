/// @description Stop falling
falling = false;

// If sprite ends up partially under ground
if(y + sprite_get_height(spr_oxygen_tank_submarine) / 2 > other.y){
	y -= 3;
}