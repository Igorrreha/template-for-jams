shader_type canvas_item;

uniform sampler2D dissolve_texture : filter_nearest;
uniform float dissolve_value : hint_range(0, 1);


void fragment() {
	vec4 main_color = COLOR;
	vec4 noise_texture = texture(dissolve_texture, UV);
	main_color.a -= floor(dissolve_value + noise_texture.r);
	COLOR = main_color;
}