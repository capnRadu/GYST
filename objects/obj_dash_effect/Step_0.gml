/// @description Step

switch (obj_player.dir) {
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

image_alpha -= 0.07;

if image_alpha <= 0 {
	instance_destroy();	
}