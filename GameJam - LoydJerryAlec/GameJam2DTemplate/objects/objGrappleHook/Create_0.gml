/// @description Insert description here
// You can write your code in this editor
depth = -10;
movementSpeed = 16;
grappled = false;
lifeSpan = 30;
alarm[0] = lifeSpan;
image_angle = point_direction(x, y, mouse_x, mouse_y);
vel_x = (mouse_x - x)/movementSpeed;
vel_y = (mouse_y - y)/movementSpeed;

