/// @function screen_shake(duration)
/// @param duration real Duration of Screen Shake
function screen_shake(duration){
	this = instance_create(x, y, obj_screen_shake);
	with (this) {
		lifespan = duration;
		alarm[0] = lifespan;
	}
}