Texture2D tex[2] : register(t0);
SamplerState samp : register(s0);

cbuffer PSObjectInfo : register(b1) 
{
	int textureIndex;
};


float4 main(float2 uv : TEXCOORD) : SV_TARGET
{
	return tex[textureIndex].Sample(samp, uv);
	//return tex.Sample(samp, uv);
}