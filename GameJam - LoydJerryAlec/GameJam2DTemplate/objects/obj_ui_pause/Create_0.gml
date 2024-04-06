/// @description init
// Simple Pause Tutorial
// https://www.youtube.com/watch?v=dNiLIX8jNOM&t=139s&ab_channel=ShaunSpalding
pause = false;
pauseSurf = -1;
menuSurf = -1;
pauseSurfBuffer = -1;
resW = display_get_width()
resH=display_get_height();

//audio control
audio_group_load(audiogroup_default);
audio_group_load(audiogroup_effects);
volume = 1;
vol_max = 2 //double
volume_slider = -1 //slider object
vol_slider_current = 50 //percentage of way through slide

volume_music = 1;
volume_slider_music = -1 //slider object
vol_slider_current_music = 50 //percentage of way through slide