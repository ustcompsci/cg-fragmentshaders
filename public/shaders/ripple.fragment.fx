#version 300 es
precision mediump float;

// Input
in vec2 model_uv;

// Uniforms
uniform sampler2D image;
uniform float time;

// Output
out vec4 FragColor;

void main() {
    vec2 uv = model_uv * 2.0 - 1.0;
    float radius = length(uv);
    float offset = (sin(radius * 30.0 - time * 5.0) + 0.5) / 60.0;
    vec2 ripple_uv = model_uv + uv * offset;
    FragColor = texture(image, ripple_uv);
}
