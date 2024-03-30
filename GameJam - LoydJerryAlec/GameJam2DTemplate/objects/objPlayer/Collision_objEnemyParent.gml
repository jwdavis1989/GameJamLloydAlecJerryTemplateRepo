/// @description Insert description here
// You can write your code in this editor
if (!invulnerable) {
    if (hp > 1) {
        audio_play_sound(snd_explosion, 1, 0);
        hp -= other.melee_damage;
        //Set invulnerability timer
        alarm[10] = 15;
        invulnerable = true;
    }
}