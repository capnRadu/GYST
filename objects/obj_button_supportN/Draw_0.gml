/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_set_font(font_text);

if (supportNo == 1 && obj_button_supportY.supportYes == 0) {
draw_text(960, 900, "Oh, maybe after playing zone 2 of our game, you'll support us. Here is a free pass for zone 2.");
}