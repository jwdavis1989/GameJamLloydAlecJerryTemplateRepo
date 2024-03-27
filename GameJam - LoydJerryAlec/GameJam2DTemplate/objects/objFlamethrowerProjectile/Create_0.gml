timeAlive = 0;
timeToLive = 20;
velY = 1
velX = 10
collided = false
collidedMove = 0;
//collideMovePerformed=false;
collided_enemy = "";
depth = -11;
if (objPlayer.facing == "left") {
    velX = -velX;  
}
image_xscale = 1/timeToLive * 2;
image_yscale = 1/timeToLive * 2;
