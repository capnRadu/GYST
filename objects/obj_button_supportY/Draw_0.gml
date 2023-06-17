/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_set_font(font_text);

if (supportYes == 1 && obj_button_supportN.supportNo == 0) {
draw_text(960, 900, "Thank you! Here is a free pass for zone 2.");
}
