if(collided == false)
{
	collided = true
	timeToLive += 10;
	x += (velX>0?1:-1) * 8
	velY = 0
	velX= 0;
}