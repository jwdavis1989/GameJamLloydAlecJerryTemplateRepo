// @description Stop falling
// TO-DO Check to make sure it's only stops falling if it's touching the ground as opposed to any wall
falling = false;
velx = 0;
vely = 0;


// If sprite ends up partially under ground
if(y + sprite_get_height(spr_rivet) / 2 > other.y){
	y -= 3;
}