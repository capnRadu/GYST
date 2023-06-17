/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if instance_exists(obj_letter) {
	instance_destroy(obj_button_letter);
	instance_destroy(obj_letter);
}

if instance_exists(obj_notification) {
	instance_destroy(obj_button_letter);
	instance_destroy(obj_notification);
}
