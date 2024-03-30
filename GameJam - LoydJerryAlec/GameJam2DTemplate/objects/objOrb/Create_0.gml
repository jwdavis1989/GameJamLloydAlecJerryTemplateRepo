event_inherited();
hp = 100;
turret = instance_create(x, y, objOrbTurret);
glow = instance_create(x, y, objOrbGlow);
image_speed = 0.2;
health = 20;
melee_damage = 10;
aggro = false;
aggroRange = 384;
hoverRange = 128;
movementSpeed = 8;
turretStance = false;
hoverRangeBuffer = 24;
firing = false;

//Randomize Movement Pattern
randSeedY = random_range(-1, 1)
if (randSeedY != 0) {
    currentVelY = 2 * randSeedY;
}
else {
    currentVelY = 2
}
tempVelY = currentVelY;
randSeedX = random_range(-1, 1)
if (randSeedX != 0) {
    currentVelX = randSeedX;
}
else {
    currentVelX = 1;
}
tempVelX = currentVelX;
bobbingPeriod = 15;
stationaryPeriod = 15;
alarm[0] = bobbingPeriod;

