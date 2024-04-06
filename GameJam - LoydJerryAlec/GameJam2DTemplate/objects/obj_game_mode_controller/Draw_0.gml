/// @description Insert description here
// You can write your code in this editor
if (debug) {
	draw_set_color(c_white);
	draw_rectangle(objPlayer.x - 32, objPlayer.y - 64, objPlayer.x + 128, objPlayer.y + 64, 0);
	draw_set_color(c_red);
	draw_text(objPlayer.x - 32, objPlayer.y - 64, "Left x: " + string("humba") + " / " + string("Wumba"));
}