/// @description Select outfit

global.lystOutfit = 1;
global.segguOutfit1 = 0;
global.segguOutfit2 = 0;
global.buySeggu = 0;
global.buyLyst = 1;
obj_player.npcPrompt = noone;
room_goto(rm_lyst);
audio_play_sound(snd_quest, 1, 0);
obj_player.image_alpha = 1;
var _text = "LystOutfit";
startDialogue(_text);