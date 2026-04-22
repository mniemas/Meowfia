//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour; // RGB Alpha

uniform float _alpha; // can be accessed in other gm places
uniform float _red;
uniform float _green;
uniform float _blue;

void main()
{
	vec4 Color =  texture2D( gm_BaseTexture, v_vTexcoord );
	if (Color.a != 0.0) { // check if transparent
		gl_FragColor = vec4(255,255,255, _alpha);
	}
}
