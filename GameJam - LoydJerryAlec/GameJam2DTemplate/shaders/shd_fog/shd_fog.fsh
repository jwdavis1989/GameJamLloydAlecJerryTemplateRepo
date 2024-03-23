//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

int OCTAVES = 8;
uniform vec4 color ;
uniform float TIME ;

uniform float FogAlpha ;
uniform float FogXSpeed ;
uniform float FogYSpeed ;
uniform float FogDensity ;

float rand(vec2 coord){
	return fract(sin(dot(coord, vec2(56, 78)) * 1000.0) * 1000.0);
}

float noise(vec2 coord){
	vec2 i = floor(coord);
	vec2 f = fract(coord);

	// 4 corners of a rectangle surrounding our point
	float a = rand(i);
	float b = rand(i + vec2(1.0, 0.0));
	float c = rand(i + vec2(0.0, 1.0));
	float d = rand(i + vec2(1.0, 1.0));

	vec2 cubic = f * f * (3.0 - 2.0 * f);

	return mix(a, b, cubic.x) + (c - a) * cubic.y * (1.0 - cubic.x) + (d - b) * cubic.x * cubic.y;
}

float fbm(vec2 coord){
	float value = 0.0;
	float scale = 0.5;

	for(int i = 0; i < OCTAVES; i++){
		value += noise(coord) * scale;
		coord *= 2.0;
		scale *= 0.5;
	}
	return value;
}

void main()
{
	
	vec3 _color = color.rgb;
	
	vec2 coord = v_vTexcoord * FogDensity;
	
	vec2 motion = vec2( fbm(coord + vec2(TIME * FogXSpeed * -1.0 , TIME * FogYSpeed * -1.0)) );

	float final = fbm(coord + motion);

	
    gl_FragColor = vec4(_color, final * FogAlpha);
}
