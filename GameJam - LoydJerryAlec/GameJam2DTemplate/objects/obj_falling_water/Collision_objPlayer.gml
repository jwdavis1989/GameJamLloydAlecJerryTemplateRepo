/// @description Flow around player
if(other.x  < x && other.x > x - 25){ // Player is to the left
	x += 3;
}else if(other.x > x && other.x < x + 25){ // Player is to the right
	x -= 3;
}