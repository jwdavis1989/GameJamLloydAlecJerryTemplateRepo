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
	float average = (original_color.r + original_color.g + original_color.b)/3.0;
	
	//Create the color
	vec4 new_color = vec4(average, average, average, original_color.a);
	vec4 noir_blue = vec4(average, original_color.g, original_color.b, original_color.a);
	if (original_color.b < 0.5) {
		gl_FragColor = new_color;
	}
	else {
		gl_FragColor = noir_blue;
	}
}
