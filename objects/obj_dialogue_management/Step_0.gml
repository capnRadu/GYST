/// @description Dialogue Management

//// ZONE 1

// Failed student 1 general dialogue
if (global.student1 == 1 && global.student1General == 0 && instance_exists(inst_2892CF22)) {
		inst_2892CF22.dialogueOption = "NPC1General";
}

// Failed student 1 final dialogue
if (global.student1General == 1 && instance_exists(inst_2892CF22)) {
		inst_2892CF22.dialogueOption = "NPC1Final";
}

// Dentist receptionist quest dialogue
if (global.student1 == 1 && global.dentistReceptionist == 0 && instance_exists(inst_4A119D49)) {
	inst_4A119D49.dialogueOption = "DentistR";
}

// Dentist receptionist general dialogue 
if (global.dentistReceptionist == 1 && instance_exists(inst_4A119D49)) {
	inst_4A119D49.dialogueOption = "DentistR2";
}

// Dentist quest dialogue 
if (global.dentist == 1 && instance_exists(inst_2CACE311)) {
	inst_2CACE311.dialogueOption = "Dentist";
}

// Dentist general dialogue 
if (global.dentist == 2 && instance_exists(inst_2CACE311)) {
	inst_2CACE311.dialogueOption = "Dentist2";
}

// Dentist final dialogue
if (global.dentistPromoteGeneral == 1 && instance_exists(inst_2CACE311)) {
	inst_2CACE311.dialogueOption = "Dentist PromoteG";
}

// Dentist promote NPCs quest dialogue
if (instance_exists(inst_53401EE3) && instance_exists(inst_723662E) && instance_exists(inst_6E44B489) && global.dentist == 2) {
	inst_53401EE3.dialogueOption = "Promote1";
	inst_723662E.dialogueOption = "Promote2";
	inst_6E44B489.dialogueOption = "Promote3";
}

// Dentist promote NPCs general dialogue
if (instance_exists(inst_53401EE3) && global.promote1 == 1) {
	inst_53401EE3.dialogueOption = "Promote1G";
}

if (instance_exists(inst_723662E) && global.promote2 == 1) {
	inst_723662E.dialogueOption = "Promote2G";
}

if (instance_exists(inst_6E44B489) && global.promote3 == 1) {
	inst_6E44B489.dialogueOption = "Promote3G";
}

// Check if player promoted the dentist
if (global.dentistPromote == 3 && global.dentistPromoteGeneral == 0 && instance_exists(inst_2CACE311)) {
	inst_2CACE311.dialogueOption = "Dentist Promote";
}

//// ZONE 2

// Failed student 2 general dialogue
if (global.student2 == 1 && global.buySeggu == 0 && instance_exists(inst_55C6B161)) {
		inst_55C6B161.dialogueOption = "NPC2General";
}

// Failed student 2 lyst dialogue
if (global.buyLyst == 1 && global.buySeggu == 0 && instance_exists(inst_55C6B161)) {
		inst_55C6B161.dialogueOption = "NPC2Lyst";
}

// Failed student 2 final dialogue
if (global.buySeggu == 1 && instance_exists(inst_55C6B161)) {
		inst_55C6B161.dialogueOption = "NPC2Final";
}

// NPCs Store Line general dialogue
if (global.student2 == 1 && instance_exists(inst_5C7F73A8) && instance_exists(inst_1D4A492D)) {
		inst_5C7F73A8.dialogueOption = "NPCSHOP";
		inst_1D4A492D.dialogueOption = "NPCSHOP";
}

// Lyst NPC quest dialogue
if (global.student2 == 1 && global.buyLyst == 0 && instance_exists(inst_4A119D49_1_1)) {
		inst_4A119D49_1_1.dialogueOption = "Lyst";
}

// Lyst NPC general dialogue
if (global.student2 == 1 && global.buyLyst == 1 && global.segguGeneral == 0 && instance_exists(inst_4A119D49_1_1)) {
		inst_4A119D49_1_1.dialogueOption = "LystG";
}

// Lyst NPC dialogue if player went to Seggu first
if (global.student2 == 1 && global.segguGeneral == 1 && instance_exists(inst_4A119D49_1_1)) {
		inst_4A119D49_1_1.dialogueOption = "LystG2";
}

// Lyst Customer NPC quest dialogue
if (global.segguGeneral == 1 && global.lystCustomer == 0 && instance_exists(inst_1B8FB78F)) {
		inst_1B8FB78F.dialogueOption = "LystCustomer";
}

// Lyst Customer NPC general dialogue
if (global.segguGeneral == 1 && global.lystCustomer == 1 && instance_exists(inst_1B8FB78F)) {
		inst_1B8FB78F.dialogueOption = "LystCustomerG";
}

// Seggu NPC quest dialogue
if (global.student2 == 1 && global.segguGeneral == 0 && instance_exists(inst_4A119D49_1)) {
		inst_4A119D49_1.dialogueOption = "Seggu";
}

// Seggu NPC general dialogue
if (global.segguGeneral == 1 && global.segguPromote == 0 && global.buySeggu == 0 && instance_exists(inst_4A119D49_1)) {
		inst_4A119D49_1.dialogueOption = "SegguG";
}

// Seggu NPC general  dialogue 2
if (global.segguGeneral == 1 && global.segguPromote == 0 && global.buySeggu == 1 && instance_exists(inst_4A119D49_1)) {
		inst_4A119D49_1.dialogueOption = "SegguG2";
}

// Seggu NPC promote dialogue
if (global.segguPromote == 1 && instance_exists(inst_4A119D49_1)) {
		inst_4A119D49_1.dialogueOption = "SegguP";
}

//// ZONE 2

// Failed student 3 general dialogue
if (global.student3 == 1 && global.optometrist == 0 && instance_exists(inst_4ABEA595)) {
		inst_4ABEA595.dialogueOption = "NPC3General";
}

// Failed student 3 final dialogue
if (global.student3 == 1 && global.optometrist == 1 &&  instance_exists(inst_4ABEA595)) {
		inst_4ABEA595.dialogueOption = "NPC3Final";
}

// Optometrist quest dialogue
if (global.student3 == 1 && global.optometrist == 0 && instance_exists(inst_4C7ADE4)) {
		inst_4C7ADE4.dialogueOption = "Optometrist";
}

// Optometrist general dialogue
if (global.student3 == 1 && global.optometrist == 1 && instance_exists(inst_4C7ADE4)) {
		inst_4C7ADE4.dialogueOption = "OptometristG";
}

// Optometrist notification
if (global.optometrist == 1 && !instance_exists(obj_textbox) && !instance_exists(obj_notification) && !instance_exists(obj_exit_menu)  && room != rm_exitgame) {
	if (optometristTimer >= 180) {
		global.playerControl = 0;
		audio_play_sound(snd_textbox, 1, 0);
		instance_create_depth(camera_get_view_x(view_camera[0]) + 192, camera_get_view_y(view_camera[0]) + 108, -100000, obj_notification)
		instance_create_depth(obj_notification.x, obj_notification.y+60, -1000000, obj_button_letter);
		optometristTimer = 0;
		show_debug_message("notification");
	} else if (optometristTimer < 180) {
		optometristTimer++;
		show_debug_message(string(optometristTimer));
	}
}