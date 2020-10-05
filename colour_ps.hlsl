// Colour pixel/fragment shader
// Basic fragment shader outputting a colour

struct InputType
{
	float4 position : SV_POSITION;
	float4 colour : COLOR;
};


float4 main(InputType input) : SV_TARGET
{
    float4 effect1 = (float4(1 - input.colour) / input.colour) + (1 / input.position);
    float4 effect2 = input.colour + (1 / input.position);
    float4 effect3 = input.colour * (1 / input.position);
    float4 effect4 = input.colour - (1 / input.position);

    return effect1 * effect4 + effect3 / effect2;
}