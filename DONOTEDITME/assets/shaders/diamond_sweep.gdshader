shader_type canvas_item;

uniform float progress: hint_range(0.0, 2.0);
uniform float size = 40.0;


void fragment() {
	// Called for every pixel the material is visible on.
	float x = abs(fract(FRAGCOORD.x / size) - 0.5);
	float y = abs(fract(FRAGCOORD.y / size) - 0.5);
	if (progress <= 1.0) {
		if (x + y + UV.x + 0.5 * UV.y > progress * 2.5) {
			discard;
		}
	} else {
		if (x + y + UV.x + 0.5 * UV.y < (progress - 1.0) * 2.5) {
			discard;
		}
	}
}

//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}
