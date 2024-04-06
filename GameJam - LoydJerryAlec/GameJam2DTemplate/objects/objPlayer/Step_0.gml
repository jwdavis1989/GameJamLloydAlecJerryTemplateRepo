//Get the player's input
if(hp <= 0){
	instance_create(0, 0, obj_ui_gameover);
}
	
if( keyboard_check(ord("L"))){
	//instance_create(0, 0, obj_ui_victory);
	room_goto(rmAlecDev);
	x=200
	y=1000
}
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
	key_weapons = [
		keyboard_check(ord("1")),
		keyboard_check(ord("2")),
		keyboard_check(ord("3")),
		keyboard_check(ord("4")),
		keyboard_check(ord("5")),
		keyboard_check(ord("6")),
	]
	key_weapon_down = mouse_wheel_down()
	key_weapon_up = mouse_wheel_up()
	key_pickup = keyboard_check(ord("V")); // For picking up and putting down fuel cells
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
	key_weapon1 = false;
	key_weapon2 = false;
	key_weapon_down = false;
	key_weapon_up = false;
	key_pickup = false;
}
//React to inputs
move = key_left + key_right;
if (grounded) {
	air_dashes = base_air_dashes;	
}
if (key_dash && !dashing && air_dashes) {
    audio_play_sound(snd_jump, 2, 0, 1, 0, random_range(0.5, 0.75));
	if(obj_inventory.fuel_cells < 1){ // Player not carrying fuel cell
	    movespeed = movespeed * 2
		grav = (0.5 * init_grav);
	    dashing = true
	    alarm[0] = 15
		air_dashes--;
	}else{ // Dashing is slower while carrying cell
		movespeed = movespeed * 1.5;
		grav = (0.7 * init_grav);
	    dashing = true
	    alarm[0] = 25;
		air_dashes--;
	}
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
if (equipped_weapon && equipped_weapon.currentAmmo < 1 && !equipped_weapon.reloading) {
    alarm[1] = equipped_weapon.reloadSpeed;
    audio_play_sound(snd_reload, 1, 0, 1, 0, random_range(0.8, 1.2));
    equipped_weapon.reloading = true;
}
//Fire if ammo
if(alarm[9] < 0 and key_shoot_hold and equipped_weapon.fully_automatic && equipped_weapon.currentAmmo > 0 && !equipped_weapon.reloading){
	for (var i = 0; i < equipped_weapon.pelletCount; i++) {
        equipped_weapon.pellets[i] = instance_create(bulletAnchorX, bulletAnchorY, equipped_weapon.ammo);
    }
	alarm[9] = equipped_weapon.fire_rate
	 equipped_weapon.currentAmmo--;
	 audio_play_sound(equipped_weapon.fire_sound, 1, 0,1,0,1
	 +random_range(-5,5)*0.1);
}
else if (key_shoot && equipped_weapon.currentAmmo > 0 && !equipped_weapon.reloading){
    for (var i = 0; i < equipped_weapon.pelletCount; i++) {
        equipped_weapon.pellets[i] = instance_create(bulletAnchorX, bulletAnchorY, equipped_weapon.ammo);
    }
    instance_create(bulletAnchorX, bulletAnchorY, objMuzzleFlare);
    audio_play_sound(equipped_weapon.fire_sound, 1, 0, 1, 0, random_range(0.8, 1.2));
	screen_shake(2);
    equipped_weapon.currentAmmo--;
}

var buttonPressed = false;
for(var i = 0; i < obj_inventory.weapons_count; i++){
	if(key_weapons[i]){
		obj_inventory.switch_weapon_to(i+1)
		buttonPressed = true;
		break;
	}
}
if(buttonPressed){
	
}else if(key_weapon_down){
	obj_inventory.switch_weapon_down();
}else if(key_weapon_up){
	obj_inventory.switch_weapon_up();
}

// Underwater Checks
if(underwater){
	if(oxygen_missing < oxygen_max){ //Lose oxygen while underwater
		oxygen_missing += 1;
	}else if(oxygen_missing == oxygen_max){ // Lose 1 hp per second when out of oxygen
		if(hp > 0){
			hp -= 1; 
			if(!audio_is_playing(drowning_sound)){ // If drowning sound not playing
				audio_stop_sound(breathing_sound); // Stop breathing sound
				drowning_sound = audio_play_sound(snd_underwater_drowning, 10, true, 0.6, 11.64, 1);
				audio_sound_loop_start(snd_underwater_drowning, 11.64);
				audio_sound_loop_end(snd_underwater_drowning, 15.86);
			}
		}
	}
}else if(!underwater && oxygen_missing > 0){
		oxygen_missing -= (oxygen_max * 0.02); // Player constantly regains oxygen while not underwater
		if(oxygen_missing < 0){
			oxygen_missing = 0; // Make sure it doesn't go negative
		}
}
if(!underwater && oxygen_missing > 0){
		oxygen_missing -= 2; // Player constantly regains oxygen while not underwater
}

// Fuel Cell
if(obj_inventory.fuel_cells > 0 && fuel_cell_interact_timer <= 0){ // Player is holding fuel cell
	if(key_pickup){
		instance_create(x, y, obj_fuel_cell);
		obj_inventory.fuel_cells--;
		fuel_cell_interact_timer = 5;
		movespeed = init_movespeed; // Reset movement to default when putting down cell
	}
}
if(fuel_cell_interact_timer > 0){
	fuel_cell_interact_timer--
}

audio_listener_position(x, y, 0);
