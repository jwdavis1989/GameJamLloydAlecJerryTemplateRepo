/// @description Stop falling
if(y < other.y){
	falling = false;
	velx = 0;
	vely = 0;
}
// If sprite ends up partially under ground
if(y + sprite_get_height(spr_scrap) / 2 > other.y){
	y -= 3;
}