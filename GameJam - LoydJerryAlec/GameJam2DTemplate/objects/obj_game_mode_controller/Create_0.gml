debug = false;
current_round = 1;
/*
Phase String List:
Defense: Spawning enemies
Gather: Gives timer until next defense round
Repair: Gives pause so player can repair sub
*/
phase = "Defense";
wave = 1;
//Gives Leviathan time to grow sprite and latch onto sub, then attack begins!
leaviathan_attack_animation_timer = 120;
if (phase == "Defense") {
	alarm[1] = leaviathan_attack_animation_timer;
	alarm[0] = spawn_timer + leaviathan_attack_animation_timer; 
}
minimum_spawn_cooldown = 30;
maximum_spawn_cooldown = 120;
spawn_timer = random_range(minimum_spawn_cooldown, maximum_spawn_cooldown);
