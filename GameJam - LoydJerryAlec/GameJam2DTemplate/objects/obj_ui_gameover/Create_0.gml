/// @description Insert description here
// You can write your code in this editor
audio_stop_all();
time_passed = 0;
image_alpha = 0;
menuSurf = -1;
gameoverSurfBuffer = -1;
anchorX = __view_get( e__VW.XView, 0 );//left side
anchorY = __view_get( e__VW.YView, 0 );//top
x=anchorX
y=anchorY
pause = true;
resW = window_get_width() 
resH = window_get_height();
image_xscale = resW/sprite_width
image_yscale = resH/sprite_height
depth = obj_ui_pause.depth

instance_deactivate_all(true);
//activate button
restart_button = instance_create(anchorX, anchorY, obj_ui_button);

//capture moment
gameoverSurf = surface_create(resW,display_get_height());
surface_set_target(gameoverSurf)
draw_surface(application_surface, 0, 0)
surface_reset_target()
//backup
if(buffer_exists(gameoverSurfBuffer)) buffer_delete(gameoverSurfBuffer)
gameoverSurfBuffer = buffer_create(resW*resH*4,buffer_fixed,1);
buffer_get_surface(gameoverSurfBuffer, gameoverSurf, 0);
soundPlayed = false;