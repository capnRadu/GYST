// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
#macro TEXT new TextAction
#macro SPEAKER new SpeakerAction
#macro CHOICE new ChoiceAction
#macro OPTION new OptionAction
#macro GOTO new GotoAction
#macro CUSTOM new CustomAction
#macro CUSTOM2 new CustomAction2
#macro CUSTOM3 new CustomAction3
#macro CUSTOM4 new CustomAction4
#macro CUSTOM5 new CustomAction5
#macro CUSTOM6 new CustomAction6
#macro CUSTOM7 new CustomAction7
#macro CUSTOM8 new CustomAction8
#macro CUSTOM9 new CustomAction9
#macro CUSTOM10 new CustomAction10
#macro CUSTOM11 new CustomAction11
#macro CUSTOM12 new CustomAction12
#macro CUSTOM13 new CustomAction13
#macro CUSTOM14 new CustomAction14
#macro CUSTOM15 new CustomAction15
#macro CUSTOM16 new CustomAction16

function CustomAction(_action): DialogueAction() constructor {
	action = _action;
	
	act = function(seggu) {
		action(seggu);
	}
}

function CustomAction2(_action): DialogueAction() constructor {
	action = _action;
	
	act = function(lyst) {
		action(lyst);
	}
}

function CustomAction3(_action): DialogueAction() constructor {
	action = _action;
	
	act = function(student1Dialogue) {
		action(student1Dialogue);
	}
}

function CustomAction4(_action): DialogueAction() constructor {
	action = _action;
	
	act = function(dentistReceptionistDialogue) {
		action(dentistReceptionistDialogue);
	}
}

function CustomAction5(_action): DialogueAction() constructor {
	action = _action;
	
	act = function(dentistDialogue) {
		action(dentistDialogue);
	}
}

function CustomAction6(_action): DialogueAction() constructor {
	action = _action;
	
	act = function(promote1Dialogue) {
		action(promote1Dialogue);
	}
}

function CustomAction7(_action): DialogueAction() constructor {
	action = _action;
	
	act = function(promote2Dialogue) {
		action(promote2Dialogue);
	}
}

function CustomAction8(_action): DialogueAction() constructor {
	action = _action;
	
	act = function(promote3Dialogue) {
		action(promote3Dialogue);
	}
}

function CustomAction9(_action): DialogueAction() constructor {
	action = _action;
	
	act = function(dentistPromoteDialogue) {
		action(dentistPromoteDialogue);
	}
}

function CustomAction10(_action): DialogueAction() constructor {
	action = _action;
	
	act = function(fade) {
		action(fade);
	}
}

function CustomAction11(_action): DialogueAction() constructor {
	action = _action;
	
	act = function(student2Dialogue) {
		action(student2Dialogue);
	}
}

function CustomAction12(_action): DialogueAction() constructor {
	action = _action;
	
	act = function(segguGeneral) {
		action(segguGeneral);
	}
}

function CustomAction13(_action): DialogueAction() constructor {
	action = _action;
	
	act = function(segguPromote) {
		action(segguPromote);
	}
}

function CustomAction14(_action): DialogueAction() constructor {
	action = _action;
	
	act = function(student3Dialogue) {
		action(student3Dialogue);
	}
}

function CustomAction15(_action): DialogueAction() constructor {
	action = _action;
	
	act = function(optometrist) {
		action(optometrist);
	}
}

function CustomAction16(_action): DialogueAction() constructor {
	action = _action;
	
	act = function(lystJournal) {
		action(lystJournal);
	}
}

function DialogueAction() constructor {
	act = function() { };
}

// Define new text to type out
function TextAction(_text) : DialogueAction() constructor {
	text = _text;
	
	act = function(textbox) {
		textbox.setText(text);
	}
}

// Set the speaker, optionally its portrait and side the portrait is on
function SpeakerAction(_name, _sprite = undefined, _side = undefined) : DialogueAction() constructor {
	name = _name;
	sprite = _sprite;
	side = _side;
	
	act = function(textbox) {
		
		if (!is_undefined(sprite))
			textbox.portrait_sprite = sprite;
			
		if (!is_undefined(side))
			textbox.portrait_side = side;
			
		textbox.next();
	}
}

// Define a branch in the dialogue
function ChoiceAction(_text) : DialogueAction() constructor {
	text = _text;
	
	options = [];
	for (var i = 1; i < argument_count; i++)
		array_push(options, argument[i]);
		
	act = function(textbox) {
		textbox.setText(text);
		textbox.options = options;
		textbox.option_count = array_length(options);
		textbox.current_option = 0;
	}
}

// Place options within the ChoiceAction
function OptionAction(_text, _topic) : DialogueAction() constructor {
	text = _text;
	topic = _topic;
	
	act = function(textbox) {
		textbox.setTopic(topic);	
	}
}

// Automatically go to a specified topic
function GotoAction(_topic) : DialogueAction() constructor {
	topic = _topic;
	
	act = function(textbox) {
		textbox.setTopic(topic);
	}
}
