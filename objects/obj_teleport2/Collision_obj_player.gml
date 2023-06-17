/// @description Room Teleport

instance_deactivate_all(false);
instance_destroy(obj_partRain);
instance_create_depth(0, 0, -1000000, obj_fade);
room_goto(room_teleport);

