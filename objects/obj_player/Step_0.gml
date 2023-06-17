/// @description Step 

// Check pressed key
moveRight = keyboard_check(ord("D"));
moveLeft = keyboard_check(ord("A"));
moveUp = keyboard_check(ord("W"));
moveDown = keyboard_check(ord("S"));
dash = keyboard_check_pressed(vk_shift);
noclip = keyboard_check(vk_end);

// Depth
depth = -y;

// Calculate movement
vx = ((moveRight - moveLeft) * walkSpeed);
vy = ((moveDown - moveUp) * walkSpeed);

// Change sprites based on direction
if (vx > 0) {
	dir = 0;
}
if (vx < 0) {
	dir = 2;
}	
if (vy > 0) {
	dir = 3;
}
if (vy < 0) {
	dir = 1;
}
if (vx == 0 && vy == 0) {
	dir = 4;
}

if (global.playerControl == 1) {
	switch (dir) {
		case 0:
				if (global.lystOutfit == 1) sprite_index = spr_outfit1_right;
				else if (global.segguOutfit1 == 1 && global.optometrist == 0) sprite_index = spr_outfit2_right;
				else if (global.segguOutfit2 == 1 && global.optometrist == 0) sprite_index = spr_outfit3_right;
				else if (global.optometrist == 0) sprite_index = spr_player_right;
				else if (global.segguOutfit1 == 1 && global.optometrist == 1) sprite_index = spr_outfit2g_right;
				else if (global.segguOutfit2 == 1 && global.optometrist == 1) sprite_index = spr_outfit3g_right;
		break;
		case 1:
				if (global.lystOutfit == 1) sprite_index = spr_outfit1_up;
				else if (global.segguOutfit1 == 1) sprite_index = spr_outfit2_up;
				else if (global.segguOutfit2 == 1) sprite_index = spr_outfit3_up;
				else if (global.optometrist == 0) sprite_index = spr_player_up;
		break;
		case 2:
				if (global.lystOutfit == 1) sprite_index = spr_outfit1_left;
				else if (global.segguOutfit1 == 1 && global.optometrist == 0) sprite_index = spr_outfit2_left;
				else if (global.segguOutfit2 == 1 && global.optometrist == 0) sprite_index = spr_outfit3_left;
				else if (global.segguOutfit1 == 1 && global.optometrist == 1) sprite_index = spr_outfit2g_left;
				else if (global.segguOutfit2 == 1 && global.optometrist == 1) sprite_index = spr_outfit3g_left;
				else if (global.optometrist == 0) sprite_index = spr_player_left;
		break;
		case 3:
				if (global.lystOutfit == 1) sprite_index = spr_outfit1_down;
				else if (global.segguOutfit1 == 1 && global.optometrist == 0) sprite_index = spr_outfit2_down;
				else if (global.segguOutfit2 == 1 && global.optometrist == 0) sprite_index = spr_outfit3_down;
				else if (global.segguOutfit1 == 1 && global.optometrist == 1) sprite_index = spr_outfit2g_down;
				else if (global.segguOutfit2 == 1 && global.optometrist == 1) sprite_index = spr_outfit3g_down;
				else if (global.optometrist == 0) sprite_index = spr_player_down;
		break;
		case 4:
				if (global.lystOutfit == 1) sprite_index = spr_player_outfit1;
				else if (global.segguOutfit1 == 1 && global.optometrist == 0) sprite_index = spr_player_outfit2;
				else if (global.segguOutfit2 == 1 && global.optometrist == 0) sprite_index = spr_player_outfit3;
				else if (global.segguOutfit1 == 1 && global.optometrist == 1) sprite_index = spr_outfit2g;
				else if (global.segguOutfit2 == 1 && global.optometrist == 1) sprite_index = spr_outfit3g;
				else if (global.optometrist == 0) sprite_index = spr_player;
		break;
	}
}

if (global.playerControl == 1 && !noclip) {
		// Horizontal collision
		if (place_meeting(x+vx, y, obj_background)) {
			while (!place_meeting(x+sign(vx), y, obj_background)) {
				x = x + sign(vx);	
			}
			vx = 0;
		}		
		x = x + vx;

		// Vertical collision
		if (place_meeting(x, y+vy, obj_background)) {
			while (!place_meeting(x, y+sign(vy), obj_background)) {
				y = y + sign(vy);	
			}
			vy = 0;
		}				
		y = y + vy;
}

if (global.playerControl == 1 && noclip) {
	x = x + vx * 2;
	y = y + vy * 2;
}

// Walk sound effect
if (global.playerControl == 1 && image_alpha == 1) {
	if ((moveRight || moveLeft || moveUp || moveDown) && walkSoundDelay == 20) {
			audio_play_sound(snd_walk, 1, 0);
			walkSoundDelay = 0;
	} else if (moveRight || moveLeft || moveUp || moveDown) walkSoundDelay++;
}

// Dashing
if (global.playerControl == 1) {
	if (dash_cooldown == 120) {
		if (dash && is_dashing == false) {
			is_dashing = true;

	
			var horizontal_dir = sign(vx);
			var vertical_dir = sign(vy);
	
			vx += vx + dash_speed * horizontal_dir;
			vy += vy + dash_speed * vertical_dir;
	
			if (place_meeting(x+vx, y, obj_background)) {
					while (!place_meeting(x+sign(vx), y, obj_background)) {
						x = x + sign(vx);	
					}
					vx = 0;
				}				
				x = x + vx;
		
				if (place_meeting(x, y+vy, obj_background)) {
					while (!place_meeting(x, y+sign(vy), obj_background)) {
						y = y + sign(vy);	
					}
					vy = 0;
				}			
				y = y + vy;
		
			instance_create_depth(x, y, depth + 1, obj_dash_effect);

			dash_cooldown = 0;
			is_dashing = false;
		}
	} else dash_cooldown += 1;
}

// Check for NPCs
nearbyNPC = collision_rectangle(x-lookRange, y-lookRange, x+lookRange, y+lookRange, obj_par_npc, false, true);

// Check for doors
nearbyDoor = collision_rectangle(x, y, x+1, y+1, obj_teleport, false, true);

// Prompt NPCs
	// Show prompt
	if (nearbyNPC) {
		if (npcPrompt == noone || npcPrompt == undefined) {
			npcPrompt = scr_showPrompt(nearbyNPC, nearbyNPC.x, nearbyNPC.y - 40);
			show_debug_message("NPC show prompt");
		}
	}

	// Dismiss prompt
	if (!nearbyNPC) {
		scr_dismissPrompt(npcPrompt, 0);
		show_debug_message("NPC dismiss prompt");
	}
	
// Prompt doors
	// Show prompt
	if (nearbyDoor) {
		if (npcPromptDoor == noone || npcPromptDoor == undefined) {
			npcPromptDoor = scr_showPrompt(nearbyDoor, nearbyDoor.x, nearbyDoor.y - 40);
			show_debug_message("Door show prompt");
		}
	}

	// Dismiss prompt
	if (!nearbyDoor) {
		scr_dismissPrompt(npcPromptDoor, 1);
		show_debug_message("Door dismiss prompt");
	}
	
// Regain movement
if (room != rm_outfitLyst && room != rm_outfitSeggu && !instance_exists(obj_textbox) && !instance_exists(obj_letter) && !instance_exists(obj_notification) && !instance_exists(obj_exit_menu)) global.playerControl = 1;

// Start dialogue 
if (keyboard_check_pressed(vk_space) == 1 && nearbyNPC && global.playerControl == 1) {
	global.playerControl = 0;
	var _text = nearbyNPC.dialogueOption;
	audio_play_sound(snd_textbox, 1, 0);
	startDialogue(_text);
}
