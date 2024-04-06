/// @description 25% chance to drop health drops
var random_number = round(random_range(1, 100));
if(random_number <= 25){
	instance_create(x, y, obj_health_drop);
}