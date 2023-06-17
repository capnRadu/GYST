/// @description Select outfit

global.lystOutfit = 0;
global.segguOutfit1 = 0;
global.segguOutfit2 = 1;
obj_player.npcPrompt = noone;
room_goto(rm_seggu);
audio_play_sound(snd_quest, 1, 0);
global.segguGeneral = 1;
obj_player.image_alpha = 1;
var _text = "SegguOutfit";
startDialogue(_text);