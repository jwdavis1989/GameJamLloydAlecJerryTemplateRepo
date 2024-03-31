///@description collision
//target = instance_nearest(x, y, objEnemyParent);
other.hp -= objPlayer.equipped_weapon.damage;
if(collided == false)
{
	collided = true
	timeToLive += 10;
	velY = 0;
	velX= 0;
	x=other.x
	y=other.y
	collided_enemy=other
}