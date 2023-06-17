/// @description Shader

shader_set(shader_Grayscale);
shader_set_uniform_f(uniForm_AlphaSet, valueAlpha);
draw_surface(application_surface, 0, 0);
shader_reset();