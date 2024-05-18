#version 300 es
precision mediump float;

// Input
in vec2 model_uv;

// Uniforms
uniform sampler2D image;
uniform float pixel_size;

// Output
out vec4 FragColor;

void main() {
    vec2 uv = model_uv;
    vec2 pixelated_uv = floor(uv / pixel_size) * pixel_size;
    FragColor = texture(image, pixelated_uv);
}
