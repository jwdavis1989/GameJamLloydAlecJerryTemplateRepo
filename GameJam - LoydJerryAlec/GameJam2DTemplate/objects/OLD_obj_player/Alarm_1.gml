/// @description After missile points are picked:
instance_create((x + point1x)/2, (y + point1y)/2, obj_special_missile_explosion)
instance_create(point1x, point1y, obj_special_missile_explosion)
instance_create((point1x + point2x)/2, (point1y + point2y)/2, obj_special_missile_explosion)
instance_create(point2x, point2y, obj_special_missile_explosion)
instance_create((point2x + point3x)/2, (point2y + point3y)/2, obj_special_missile_explosion)
instance_create(point3x, point3y, obj_special_missile_explosion)
instance_create((point3x + point4x)/2, (point3y + point4y)/2, obj_special_missile_explosion)
instance_create(point4x, point4y, obj_special_missile_explosion)
instance_create((point4x + point5x)/2, (point4y + point5y)/2, obj_special_missile_explosion)
instance_create(point5x, point5y, obj_special_missile_explosion)
mech_angle = 0
aiming_missile = false
missile_points = 5
missiles -= 1
drawing_missile_lines = false;
if (form == 0) {
    __background_set( e__BG.VSpeed, 0, 30 );
}

