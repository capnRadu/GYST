/// @description Room Teleport

if (keyboard_check_pressed(vk_space)) {
	instance_create_depth(0, 0, -1000000, obj_fade);
	room_goto(room_teleport);
	obj_player.x = room_x;
	obj_player.y = room_y;
}
