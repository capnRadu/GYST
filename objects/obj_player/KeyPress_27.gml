/// @description Exit game / close textbox

if (room != rm_outfitLyst && room != rm_outfitSeggu && !instance_exists(obj_textbox) && !instance_exists(obj_letter) && !instance_exists(obj_notification) && !instance_exists(obj_exit_menu)) {
	instance_create_depth(0, 0, -1000000, obj_fade);
	global.playerControl = 0;
	instance_create_depth(0, 0, -999, obj_fade2);
	instance_create_depth(camera_get_view_x(view_camera[0]) + 192, camera_get_view_y(view_camera[0]) + 108, -100000, obj_exit_menu);
	instance_create_depth(obj_exit_menu.x, obj_exit_menu.y-21, -1000000, obj_button_exit_resume);
	instance_create_depth(obj_exit_menu.x, obj_exit_menu.y+21, -1000000, obj_button_exit_quit);
} else if (instance_exists(obj_exit_menu)) {
	instance_create_depth(0, 0, -1000000, obj_fade);
	instance_destroy(obj_fade2);
	instance_destroy(obj_exit_menu);
	instance_destroy(obj_button_exit_resume);
	instance_destroy( obj_button_exit_help);
	instance_destroy(obj_button_exit_quit);
}

if (instance_exists(obj_textbox)) {
	instance_destroy(obj_textbox);	
}