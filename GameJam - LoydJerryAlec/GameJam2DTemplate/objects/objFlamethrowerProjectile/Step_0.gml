timeAlive += 1;
if timeAlive > timeToLive{
	instance_destroy(self);
}
//size
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
y += velY + (random_range(0,10)*0.1);
