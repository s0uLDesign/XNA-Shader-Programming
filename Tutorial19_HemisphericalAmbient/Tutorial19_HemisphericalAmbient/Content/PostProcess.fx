/*
 * Tutorial
 * XNA Shader programming
 * www.gamecamp.no
 * 
 * by: Petri T. Wilhelmsen
 * e-mail: petriw@gmail.com
 * 
 * Feel free to ask me a question, give feedback or correct mistakes!
 * This shader is mostly based on the shader "post edgeDetect" from nVidias Shader library:
 * http://developer.download.nvidia.com/shaderlibrary/webpages/shader_library.html
 */


// Global variables
// This will use the texture bound to the object( like from the sprite batch ).
sampler ColorMapSampler : register(s0);

// Noise
float4 PixelShader(float2 Tex: TEXCOORD0) : COLOR
{
	float4 Color=tex2D(ColorMapSampler, Tex);

    return Color;
}

technique PostProcess
{
	pass P0
	{
		// A post process shader only needs a pixel shader.
		PixelShader = compile ps_2_0 PixelShader();
	}
}