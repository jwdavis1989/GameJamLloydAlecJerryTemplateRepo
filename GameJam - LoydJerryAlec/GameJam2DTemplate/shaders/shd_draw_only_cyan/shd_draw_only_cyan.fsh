//
// Simple passthrough fragment shader
//Location of the pixel
varying vec2 v_vTexcoord;
//RGBA coloring of the pixel
varying vec4 v_vColour;

void main()
{
	//Get the original color of the pixel
	vec4 original_color = texture2D( gm_BaseTexture, v_vTexcoord);
	
	//Create the color
	float alpha = original_color.a;
	if (original_color.b < 0.5) {
		alpha = 0.0;
	}
	gl_FragColor = vec4(original_color.r, original_color.g, original_color.b, alpha);
}
