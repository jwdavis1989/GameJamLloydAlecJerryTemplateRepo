// @description Stop falling
if(y < other.y){
	falling = false;
}
// If sprite ends up partially under ground
if(y + sprite_get_height(spr_med_kit) / 2 > other.y){
	y -= 3;
}