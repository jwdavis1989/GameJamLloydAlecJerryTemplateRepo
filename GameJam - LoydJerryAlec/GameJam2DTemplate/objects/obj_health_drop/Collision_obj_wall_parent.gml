/// @description Stop falling
falling = false;

// If sprite ends up partially under ground
if(y + sprite_get_height(spr_health_drop) / 2 > other.y){
	y -= 3;
}