/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (room = rm_exitgame) room_goto(rm_exitgame_exit); else if (room == rm_exitgame_exit) game_end();
