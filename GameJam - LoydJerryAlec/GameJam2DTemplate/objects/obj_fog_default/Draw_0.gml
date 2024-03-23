
var _color =  shader_get_uniform(shd_fog,"color");
var _time =  shader_get_uniform(shd_fog,"TIME");
var _FogAlpha =  shader_get_uniform(shd_fog,"FogAlpha");
var _FogXSpeed =  shader_get_uniform(shd_fog,"FogXSpeed");
var _FogYSpeed =  shader_get_uniform(shd_fog,"FogYSpeed");
var _FogDensity =  shader_get_uniform(shd_fog,"FogDensity");
// Convert light color to an array
colorArray = array_create(4);
colorArray[0] = (color & $FF) / $FF;			// R
colorArray[1] = ((color >> 8) & $FF) / $FF;	// G
colorArray[2] = ((color >> 16) & $FF) / $FF;	// B
colorArray[3] = ((color >> 24) & $FF) / $FF;	// A

shader_set(shd_fog)
shader_set_uniform_f_array(_color,colorArray);
shader_set_uniform_f(_time,current_time/5000);
shader_set_uniform_f(_FogAlpha,FogAlpha);
shader_set_uniform_f(_FogXSpeed,FogXSpeed);
shader_set_uniform_f(_FogYSpeed,FogYSpeed);
shader_set_uniform_f(_FogDensity,FogDensity);
draw_self();
shader_reset();