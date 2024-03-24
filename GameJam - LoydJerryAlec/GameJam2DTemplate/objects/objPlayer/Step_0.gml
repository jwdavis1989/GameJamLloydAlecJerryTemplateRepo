//Get the player's input
if (!control_locked) {
    key_right = keyboard_check(ord("D"));
    key_left = -keyboard_check(ord("A"));
    key_down = keyboard_check(ord("S"));
    key_jump = keyboard_check_pressed(vk_space);
    key_dash = keyboard_check_pressed(vk_shift);
    key_interact = keyboard_check(ord("E"));
    key_shoot = mouse_check_button_pressed(mb_left);
	key_shoot_hold = mouse_check_button(mb_left)
	key_grapple = mouse_check_button_pressed(mb_right);
}
else {
    key_right = false;
    key_left = false;
    key_down = false;
    key_jump = false;
    key_dash = false;
    key_interact = false;
    key_shoot = false;
	key_grapple = false;
}
//React to inputs
move = key_left + key_right;
if key_dash and not dashing and (move != 0) and grounded
{
    audio_play_sound(snd_jump, 2, 0);
    movespeed = movespeed * 2
    grav = (0.5 * init_grav)
    dashing = true
    alarm[0] = 15
}
vel_x = move * movespeed;

//Falling during jump
if (vel_y < 10) 
{
    vel_y += grav; 
}

if (key_down){
    vel_y += (2 * grav);
}

if (place_meeting(x,y+1,obj_wall_parent))
{
    vel_y = key_jump * -jumpspeed
}
if key_jump
{
    grounded = false;
}

//Horizontal Collision
if (place_meeting(x+vel_x,y,obj_wall_parent))
{
    while(!place_meeting(x+sign(vel_x),y,obj_wall_parent))
    {
        x += sign(vel_x);
    }
    vel_x = 0;
}
x += vel_x;

//Vertical Collision
if (place_meeting(x,y+vel_y,obj_wall_parent))
{
    while(!place_meeting(x,y+sign(vel_y),obj_wall_parent))
    {
        y += sign(vel_y);
    }
    vel_y = 0;
}
y += vel_y;

//Animation
if (place_meeting(x,y+1,obj_wall_parent))
{
    grounded = true
    if dashing
    {
        sprite_index = spr_character_jump_or_boost;
    }
    else
    {
    
        if (move!=0) 
        {
            sprite_index = spr_character_walk;
            image_speed = 0.3
        }
        else 
        {
            sprite_index = spr_character_idle;
            image_speed = 0.1
        }
    }
}
else
{
    if (vel_y < 0) 
    {
        sprite_index = spr_character_jump_or_boost;
        image_speed = 0.1
    }
    else 
    {
        sprite_index = spr_character_jump_or_boost
        image_speed = 0.1
        grav = 1
    }
}

//Facing
if (vel_x < 0){
    image_xscale = -1;
    facing = "left";
}
if (vel_x > 0){
    image_xscale = 1;
    facing = "right";
}

if (dashing || permanent_echo) {
    instance_create(x, y, obj_dash_echo);
}

//Shooting
bulletAnchorX = x + sprite_width/2 - 1
bulletAnchorY = y - 11;
//Reload
if (equipped_weapon.currentAmmo < 1 && !equipped_weapon.reloading) {
    alarm[1] = equipped_weapon.reloadSpeed;
    audio_play_sound(snd_reload, 1, 0);
    equipped_weapon.reloading = true;
}
//Fire if ammo
if(key_shoot_hold and equipped_weapon.fully_automatic && equipped_weapon.currentAmmo > 0 && !equipped_weapon.reloading){
	for (var i = 0; i < equipped_weapon.pelletCount; i++) {
        equipped_weapon.pellets[i] = instance_create(bulletAnchorX, bulletAnchorY, equipped_weapon.ammo);
    }
	 equipped_weapon.currentAmmo--;
}
else if (key_shoot && equipped_weapon.currentAmmo > 0 && !equipped_weapon.reloading){
    for (var i = 0; i < equipped_weapon.pelletCount; i++) {
        equipped_weapon.pellets[i] = instance_create(bulletAnchorX, bulletAnchorY, equipped_weapon.ammo);
    }
    instance_create(bulletAnchorX, bulletAnchorY, objMuzzleFlare);
    audio_play_sound(equipped_weapon.fire_sound, 1, 0);
    equipped_weapon.currentAmmo--;
}

//Not fully implemented yet
//Grappling
if (key_grapple && canGrapple) {
	alarm[2] = 30;
	canGrapple = false;
	audio_play_sound(snd_bottle_rocket, 2, 0);
	instance_destroy(instance_nearest(x, y, objGrappleHook));
	grapple = instance_create(bulletAnchorX, bulletAnchorY, objGrappleHook);
}


if (grapple) {
	if (grapple.grappled) {
		if (place_meeting(x + grappleSpeed, y + grappleSpeed, obj_wall_parent)) {
			move_towards_point(grapple.x, grapple.y, 0);
			instance_destroy(grapple);
			grapple = noone;
		}
		else {
			move_towards_point(grapple.x, grapple.y, grappleSpeed);
		}
	}
}