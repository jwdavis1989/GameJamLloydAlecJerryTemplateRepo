depth = -1001;
timeAlive = 0;
timeToLive = 20;
velY = 1
velX = 10
collided = false
collided_enemy = "";
if (objPlayer.facing == "left") {
    velX = -velX;  
}
image_xscale = 1/timeToLive * 2;
image_yscale = 1/timeToLive * 2;
