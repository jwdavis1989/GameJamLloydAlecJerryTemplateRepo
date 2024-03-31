timeAlive += 1;
if timeAlive > timeToLive{
	instance_destroy(self);
}
//sprite change over time
if timeAlive > 10{
	if random_range(0,3) > 1{
		sprite_index = spr_fire_lg2
	}else{
		sprite_index = spr_fire_lg
	}
}else if timeAlive > 5{
		if random_range(0,3) > 1{
		sprite_index = spr_fire_med2
	}else{
		sprite_index = spr_fire_med
	}
}
//movement
x += velX;
if velY > 0
	y += velY + (random_range(0,10)*0.1);
//sprite size increase over time
image_xscale = timeAlive/timeToLive * 2;
image_yscale = timeAlive/timeToLive * 2;
//stick to and burn enemys
if(collided && collided_enemy != ""){
	if(instance_exists(collided_enemy)){
		collided_enemy.hp -= obj_gun_flamethrower.damage
		x=collided_enemy.x
		y=collided_enemy.y
	}
}