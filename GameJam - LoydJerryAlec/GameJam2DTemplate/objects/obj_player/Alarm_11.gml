/// @description Out of Health?
if lives > 1
{
    lives -= 1
    
    //Set invulnerability timer
    alarm[10] = 60;
    invulnerable = true;
}
else
{
    //Game Over Man!
    sprite_index = spr_invis;
    visible = false;
    control_locked = true;
    alarm[9] = 30;
    instance_create(x, y, obj_explosion_large);
    dead = true;
}

