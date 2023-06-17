/// @description Dialogue popup

if (global.optometrist == 0) {
	with (other) {
		y -= 70;
	}
	global.playerControl = 0;
	var _text = "NPC1pass";
	audio_play_sound(snd_textbox, 1, 0);
	startDialogue(_text);
} else if (global.optometrist == 1 && !global.zone3Pass) {
	global.playerControl = 0;
	global.zone3Pass = true;
	var _text = "NPC3passY";
	audio_play_sound(snd_textbox, 1, 0);
	startDialogue(_text);
}

