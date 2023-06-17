/// @description Dialogue popup

if (global.buySeggu == 0) {
	with (other) {
		x -= 70;
	}
	global.playerControl = 0;
	var _text = "NPC1pass";
	audio_play_sound(snd_textbox, 1, 0);
	startDialogue(_text);
} else if (global.buySeggu == 1 && !global.zone2Pass) {
	global.playerControl = 0;
	global.zone2Pass = true;
	var _text = "NPC2passY";
	audio_play_sound(snd_textbox, 1, 0);
	startDialogue(_text);
}

