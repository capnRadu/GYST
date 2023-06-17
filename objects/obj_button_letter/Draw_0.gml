/// @description Draw 

draw_self();

draw_set_font(font_menu);
draw_set_color(c_white);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text_transformed(x, y, button_text, 0.2, 0.2, image_angle);

draw_set_halign(fa_left);
draw_set_halign(fa_top);

