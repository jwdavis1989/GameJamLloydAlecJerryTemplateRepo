/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_color(c_white);
draw_text(x, y - 64, debug_message);
var anchorY = __view_get( e__VW.HView, 0 ) - 32 - 8;
draw_text(100 ,anchorY, 
	(currently_melee_charging?"CHARGE.":"")
	+ (currently_melee_animating? "ATK":"")
	+ (flee_animation? "FLEE":""))