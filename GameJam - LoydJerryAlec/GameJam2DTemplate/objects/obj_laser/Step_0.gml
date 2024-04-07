/// @description Move towards enemies
if(instance_exists(objEnemyParent)){ // Enemies are in room
	nearest_enemy = instance_nearest(x, y, objEnemyParent);
	move_towards_point(nearest_enemy.x, nearest_enemy.y, obj_gun_laser.pelletSpeed);
	image_angle = point_direction(x, y,nearest_enemy.x, nearest_enemy.y);
	if(!instance_exists(nearest_enemy)){ // Enemy laser was targeting is gone
		instance_destroy(self);
	}
	
}else{
	x += obj_gun_laser.pelletSpeed * speed_multiplier;
}