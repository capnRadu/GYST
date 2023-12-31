// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_showPrompt(_object, _x, _y){
	if (instance_exists(_object)) {
		if (!instance_exists(obj_textbox) && !instance_exists(obj_prompt)) {
			iii = instance_create_depth(_x, _y, -100000, obj_prompt);	
			return iii;
		}
	}
}

function scr_dismissPrompt(_whichPrompt,_toReset){ 
	if (_whichPrompt != undefined) {
		if (instance_exists(_whichPrompt)) {
			// Tell Prompt Object To Fade Out
			with (_whichPrompt) {
				fadeMe = "fadeOut";
			}
			// Reset Appropriate Prompt Variable
			if (instance_exists(obj_player)) {
				with (obj_player) {
					switch _toReset {
						// Reset npcPrompt
						case 0: npcPrompt = noone; break;
						case 1: npcPromptDoor = noone; break;
						}
					}
				}	
			}	
		}
	}