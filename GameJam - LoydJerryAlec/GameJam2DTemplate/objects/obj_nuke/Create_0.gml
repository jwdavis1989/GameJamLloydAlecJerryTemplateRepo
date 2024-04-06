/// @description Control scale and spawn accessories

image_xscale = 2;
image_yscale = 2;

instance_create(x - sprite_get_width(spr_nuke) / 2 + sprite_get_width(spr_nuke_button) / 2, 
	y + sprite_get_height(spr_nuke) / 2 + sprite_get_height(spr_nuke_button) / 2, obj_nuke_button);
// Draw sign sprite