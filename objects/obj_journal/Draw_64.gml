/// @description Journal HUD

display_set_gui_size(1920, 1080);
draw_set_alpha(0.9);
draw_set_font(font_menu);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_orange);

if (global.student1 == 0 && obj_player.letter == 1) {
	if (sound1 == 0) audio_play_sound(snd_quest, 1, 0);
	sound1 = 1;
	draw_text(960, 50, "Talk to the First Failed Student");
}

if (global.student1 == 1 && global.dentistReceptionist == 0) {
	if (sound1 == 1)	audio_play_sound(snd_quest, 1, 0);
	sound1= 2;
	draw_text(960, 50, "Talk to the receptionist inside the dentist building");
}

if (global.dentistReceptionist == 1 && global.dentist == 1) {
	if (sound1 == 2)	audio_play_sound(snd_quest, 1, 0);
	sound1 = 3;
	draw_text(960, 50, "Talk to the dentist");
}

if (global.dentist == 2 && global.dentistPromote != 3) {
	if (sound1 == 3)	audio_play_sound(snd_quest, 1, 0);
	sound1 = 4;
	draw_text(960, 50, "Promote the dentist to 3 people");
}

if (global.dentistPromote == 3 && global.dentistPromoteGeneral == 0) {
	if (sound1 == 4)	audio_play_sound(snd_quest, 1, 0);
	sound1 = 5;
	draw_text(960, 50, "Talk to the dentist");
}

if (global.dentistPromoteGeneral == 1 && global.student2 == 0) {
	if (sound1 == 5)	audio_play_sound(snd_quest, 1, 0);
	sound1 = 6;
	draw_text(960, 50, "Travel to the next zone and talk to the Second Failed Student");
}

if (global.student2 == 1 && global.buyLyst == 0 && global.buySeggu == 0 && global.segguGeneral == 0) {
	if (sound2 == 0)	audio_play_sound(snd_quest, 1, 0);
	sound2 = 1;
	draw_text(960, 60, "Go to one of the two stores and buy new clothes\n(Once you talk to a store clerk, you can't rethink your choice)");
}

if (global.buyLyst == 1 && global.buySeggu == 0 && global.buyLystQuest == 0 && global.segguGeneral == 0) {
	if (sound2 == 1)	audio_play_sound(snd_quest, 1, 0);
	sound2 = 2;
	draw_text(960, 50, "Return to the Second Failed Student");
}

if (global.buyLyst == 1 && global.buySeggu == 0 && global.buyLystQuest == 1 && global.segguGeneral == 0) {
	if (sound2 == 2)	audio_play_sound(snd_quest, 1, 0);
	sound2 = 6;
	draw_text(960, 50, "Go to another clothing store and buy better clothes"); //
}

if ((global.buyLyst == 1 || global.buyLyst == 0) && global.buySeggu == 1 && global.student3 == 0) {
	if (sound2 == 4)	audio_play_sound(snd_quest, 1, 0);
	sound2 = 5;
	draw_text(960, 50, "Travel to the next zone and talk to the Third Failed Student");
}

if (global.segguGeneral == 1 && global.buySeggu == 0 && global.segguPromote == 0) {
		if (sound2 == 2 || sound2 == 6)	audio_play_sound(snd_quest, 1, 0);
		sound2 = 3;
		draw_text(960, 50, "Promote the clothing store to a customer from the other store"); // 
}

if (global.segguPromote == 1) {
	if (sound2 == 3)	audio_play_sound(snd_quest, 1, 0);
	sound2 = 4;
	draw_text(960, 50, "Return to the Seggu store clerk");
}

if (global.student3 == 1 && global.optometrist == 0) {
	if (sound3 == 0)	audio_play_sound(snd_quest, 1, 0);
	sound3 = 1;
	draw_text(960, 50, "Go to the optometrist and buy a pair of glasses");
}

if (global.optometrist == 1) {
	if (sound3 == 1)	audio_play_sound(snd_quest, 1, 0);
	sound3 = 2;
	draw_text(960, 50, "Find the maze exit");
}

draw_set_alpha(1);
