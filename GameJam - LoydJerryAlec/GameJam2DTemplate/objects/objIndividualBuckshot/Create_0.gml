alarm[0] = objPlayer.pelletLifetime;
velY = random_range(-objPlayer.pelletSpread, objPlayer.pelletSpread);
velX = random_range(objPlayer.pelletSpeed * objPlayer.pelletSpeedVariance, objPlayer.pelletSpeed);
if (objPlayer.facing == "left") {
    velX = -velX;  
}
explosive = objPlayer.pelletExplosive;
grav = velY/10;