depth = -1001;
alarm[0] = objPlayer.equipped_weapon.pelletLifetime;
velY = random_range(-objPlayer.equipped_weapon.pelletSpread, objPlayer.equipped_weapon.pelletSpread);
velX = random_range(objPlayer.equipped_weapon.pelletSpeed * objPlayer.equipped_weapon.pelletSpeedVariance, objPlayer.equipped_weapon.pelletSpeed);
if (objPlayer.facing == "left") {
    velX = -velX;  
}
explosive = objPlayer.equipped_weapon.pelletExplosive;
grav = velY/10;