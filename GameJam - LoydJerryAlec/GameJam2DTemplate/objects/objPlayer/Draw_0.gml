//Invulnerability Flicker
if (alarm[10] > 0 and alarm[10]%4 == 0) {
    //
	shader_set(shd_draw_only_cyan);
	draw_self();
	shader_reset();
}
else {
    draw_self();
}