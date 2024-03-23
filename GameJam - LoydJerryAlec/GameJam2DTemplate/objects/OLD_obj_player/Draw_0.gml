//Invulnerability Flicker
if (alarm[10] > 0 and alarm[10]%4 == 0) {
        //
}
else {
    draw_self()
}

image_angle = mech_angle
/*if form == 0
{
    draw_trail(16,2,c_red,-1,1,1);
}*/

draw_set_font(font0)
draw_set_halign(fa_left)

if drawing_missile_lines
{
    draw_line_width_colour(x, y, point1x, point1y, 8, c_red, c_yellow)
    draw_line_width_colour(point1x, point1y, point2x, point2y, 8, c_red, c_yellow)
    draw_line_width_colour(point2x, point2y, point3x, point3y, 8, c_red, c_yellow)
    draw_line_width_colour(point3x, point3y, point4x, point4y, 8, c_red, c_orange)
    draw_line_width_colour(point4x, point4y, point5x, point5y, 8, c_red, c_red)
    draw_sprite_ext(spr_jet_shadow, 0, point1x, point1y, 1, 1, point_direction(x, y, point1x, point1y) - 90, c_white, 1)
    draw_sprite_ext(spr_jet_shadow, 1, point2x, point2y, 1, 1, point_direction(point1x, point1y, point2x, point2y) - 90, c_white, 1)
    draw_sprite_ext(spr_jet_shadow, 2, point3x, point3y, 1, 1, point_direction(point2x, point2y, point3x, point3y) - 90, c_white, 1)
    draw_sprite_ext(spr_jet_shadow, 3, point4x, point4y, 1, 1, point_direction(point3x, point3y, point4x, point4y) - 90, c_white, 1)
    draw_sprite_ext(spr_jet_shadow, 4, point5x, point5y, 1, 1, point_direction(point4x, point4y, point5x, point5y) - 90, c_white, 1)
}

if aiming_missile {
    
    draw_set_alpha(0.25); // Increase or decrease to change tint intensity
    draw_set_color(c_red); 
    draw_rectangle(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ), 0);
    draw_set_alpha(1);
    draw_set_color(c_white);
}

/* */
/*  */
