/// @function screen_shake(duration)
/// @param duration real Duration of Screen Shake in Frames
/// Requires Layer called Effect_Screen_Shake set to screenshake filter, turned invisible at first.
function screen_shake(duration){
	this = instance_create(x, y, obj_screen_shake);
	with (this) {
		lifespan = duration;
		alarm[0] = lifespan;
	}
}