/// @description Letter Alarm

global.playerControl = 0;
letter = 1;
audio_play_sound(snd_textbox, 1, 0);
instance_create_depth(camera_get_view_x(view_camera[0]) + 192, camera_get_view_y(view_camera[0]) + 108, -100000, obj_letter);
instance_create_depth(obj_letter.x, obj_letter.y+60, -1000000, obj_button_letter);

