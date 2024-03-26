/// @description Insert description here
// You can write your code in this editor
if (instance_exists(objPlayer)) {
	x = objPlayer.x;
	y = objPlayer.y;

	if (objPlayer.facing == "right") {
		image_xscale = 1;
	}
	else {
		image_xscale = -1	
	}
	image_index = objPlayer.image_index;
}
else {
	instance_destroy(self);	
}