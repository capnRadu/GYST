/// @description Dialogue popup

if (global.dentistPromote != 3 || global.dentistPromoteGeneral == 0) {
	with (other) {
		x += 70;
	}
	global.playerControl = 0;
	var _text = "NPC1pass";
	audio_play_sound(snd_textbox, 1, 0);
	startDialogue(_text);
} else if (global.dentistPromote == 3 && !global.zone1Pass && global.dentistPromoteGeneral == 1) {
	global.playerControl = 0;
	global.zone1Pass = true;
	var _text = "NPC1passY";
	audio_play_sound(snd_textbox, 1, 0);
	startDialogue(_text);
}

