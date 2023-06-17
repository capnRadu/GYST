/// @description Music manager

if ((room == rm_titlescreen || room == rm_endgame) && menuMusic == 0) {
	audio_play_sound(snd_menu, 1, 1);
	menuMusic = 1;
	mazeMusic = 0;
	dentistMusic = 0;
	lystMusic = 0;
	segguMusic = 0;
	optometristMusic = 0;
}

if (room = rm_maze && mazeMusic == 0) {
	audio_stop_all();
	audio_play_sound(snd_maze, 1, 1);
	menuMusic = 0;
	mazeMusic = 1;
	dentistMusic = 0;
	lystMusic = 0;
	segguMusic = 0;
	optometristMusic = 0;
}

if (room = rm_dentist && dentistMusic == 0) {
	audio_stop_all();
	audio_play_sound(snd_dentist, 1, 1);
	menuMusic = 0;
	mazeMusic = 0;
	dentistMusic = 1;
	lystMusic = 0;
	segguMusic = 0;
	optometristMusic = 0;
}

if (room = rm_lyst && lystMusic == 0) {
	audio_stop_all();
	audio_play_sound(snd_lyst, 1, 1);
	menuMusic = 0;
	mazeMusic = 0;
	dentistMusic = 0;
	lystMusic = 1;
	segguMusic = 0;
	optometristMusic = 0;
}

if (room = rm_seggu && segguMusic == 0) {
	audio_stop_all();
	audio_play_sound(snd_seggu, 1, 1);
	menuMusic = 0;
	mazeMusic = 0;
	dentistMusic = 0;
	lystMusic = 0;
	segguMusic = 1;
	optometristMusic = 0;
}

if (room = rm_optometrist && optometristMusic == 0) {
	audio_stop_all();
	audio_play_sound(snd_optometrist, 1, 1);
	menuMusic = 0;
	mazeMusic = 0;
	dentistMusic = 0;
	lystMusic = 0;
	segguMusic = 0;
	optometristMusic = 1;
}