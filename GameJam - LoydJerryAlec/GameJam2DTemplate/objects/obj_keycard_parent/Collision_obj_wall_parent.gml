// @description Stop falling
// TO-DO Check to make sure it's only stops falling if it's touching the ground as opposed to any wall
falling = false;

// If sprite ends up partially under ground
if(y + sprite_get_height(spr_med_kit) / 2 > other.y){
	y -= 3;
}