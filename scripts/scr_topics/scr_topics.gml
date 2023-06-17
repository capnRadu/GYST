// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
global.topics = {};

//////////////////////////////////////////////////////// EXAMPLE

global.topics[$ "Example"] = [
	TEXT("Hello there!"),
	TEXT("Ths is some example text."),
	TEXT("We should test having a page with lots of words in it, to make sure that the line break feature is working properly.")
];

global.topics[$ "Good Morning"] = [
	SPEAKER("Mascot", PORTRAIT_SIDE.LEFT),
	TEXT("Good morning! How are you today!"),
	SPEAKER("Player", PORTRAIT_SIDE.RIGHT),
	TEXT("I'm doing very well! And you?"),
	SPEAKER("Mascot", PORTRAIT_SIDE.LEFT),
	TEXT("I can't complain, except for one thing..."),
	SPEAKER("Mascot"),
	TEXT("The supermarket was out of carrot juice today!")
];

global.topics[$ "Breakfast"] = [
	SPEAKER("Mascot", PORTRAIT_SIDE.LEFT),
	CHOICE("What do you want for breakfast?",
		OPTION("Eggs", "Chose Eggs"),
		OPTION("Pancakes", "Chose Pancakes"))
];

global.topics[$ "Chose Eggs"] = [
	TEXT("That's a healthy way to start the day!"),
	GOTO("End of Breakfast")
];

global.topics[$ "Chose Pancakes"] = [
	TEXT("Ooh, yummy!"),
	GOTO("End of Breakfast")
];

global.topics[$ "End of Breakfast"] = [
	TEXT("Goodbye, now!")
];

//////////////////////////////////////////////////////////////////////////////////////////////////////////////// GENERAL

//////////////////////////////////////////////////////// NPC General
global.topics[$ "NPC General"] = [
	TEXT("Huh?")
];

//////////////////////////////////////////////////////// Introduction Letter

global.topics[$ "Letter"] = [
	TEXT("Dear Student,"),
	TEXT("Congratulations and welcome to Happy University. May you experience the vast potential our city and college may provide you. Take in the environment and interact with the people. We await your arrival at the end of this route."),
	TEXT("Sincerely,"),
	TEXT("Student Administration Staff")
];
//////////////////////////////////////////////////////////////////////////////////////////////////////////////// ZONE 1

//////////////////////////////////////////////////////// NPC1 (Failed Student 1)

global.topics[$ "NPC1"] = [
	TEXT("Failed Student 1: Hello"),
	TEXT("You: Hi"),
	TEXT("You: Where am I?"),
	TEXT("Failed Student 1: You are in a maze, consider it a road to success."),
	TEXT("You: Why am I here though?"),
	TEXT("Failed Student 1: Because you are not ready yet. You need to change or else you'll be a failed student like me."),
	TEXT("You: Can I pass through?"),
	TEXT("Failed Student 1: No"),
	TEXT("You: Why not?"),
	TEXT("Failed Student 1: Because I don't like how ugly your teeth look."),
	TEXT("You: Okay... So?"),
	TEXT("Failed Student 1: You may have noticed a building on the way here. That's the dentist. Go fix yourself."),
	TEXT("You: What does that have to do with me becoming a failed student?"),
	TEXT("Failed Student 1: It's a quest. That's my quest. Go do it."),
	CUSTOM3(function(student1Dialogue) {
	global.student1 = 1;
	student1Dialogue.next();
	})
];

//////////////////////////////////////////////////////// NPC1 General

global.topics[$ "NPC1General"] = [
	TEXT("Failed Student 1: Go fix your teeth at the dentist.")
];

//////////////////////////////////////////////////////// NPC1 Final

global.topics[$ "NPC1Final"] = [
	TEXT("Failed Student 1: Good luck, and don't forget to ask the instructors on anything you don't understand!")
];


//////////////////////////////////////////////////////// NPC1 Yes Pass
global.topics[$ "NPC1passY"] = [
	TEXT("Failed Student 1: Good, you look so much better now."),
	TEXT("Failed Student 1:  I failed because I wasn't able to follow instructions correctly."),
	TEXT("Failed Student 1: Sometimes it's direct like how I did my quest but other times it just doesn't make sense how it is worded. Where I am from, the instructors would come to me when they notice I'm struggling but here, I have to seek them out."),
	TEXT("Failed Student 1: Remember, you can always ask the instructors on anything you don't understand. It's not because they are trying to be mean by not going to you. They just don't know you need their help if you don't ask for it..."),
	TEXT("Failed Student 1: They are supposed to be there to help you and hopefully you'll get someone who can provide constructive criticism to help you improve."),
	TEXT("Failed Student 1: Best of luck to you.")
];

//////////////////////////////////////////////////////// NPC1 No Pass
global.topics[$ "NPC1pass"] = [
	TEXT("Failed Student: You shall not pass!")
];

//////////////////////////////////////////////////////// Dentist receptionist

global.topics[$ "DentistR"] = [
	TEXT("You: Hello."),
	TEXT("Receptionist: Hi!"),
	TEXT("You: I would like an appointment with the dentist."),
	TEXT("Receptionist: You're in luck, he is available right now. Please enter the room to my right."),
	TEXT("You: Okay, thanks!"),
	CUSTOM4(function(dentistReceptionistDialogue) {
	global.dentistReceptionist = 1;
	global.dentist = 1;
	dentistReceptionistDialogue.next();
	})
];

global.topics[$ "DentistR2"] = [
	TEXT("Receptionist: Please enter the room to my right to see the dentist."),
	TEXT("You: Okay, thanks!"),
];

//////////////////////////////////////////////////////// Dentist
global.topics[$ "Dentist"] = [
	TEXT("Dentist: Hello!"),
	TEXT("You: Hi."),
	TEXT("Dentist: How can I help you?"),
	TEXT("You: Someone said my teeth are ugly. Can you help me fix them?"),
	TEXT("Dentist: Well of course. Let me take a look. They sure do look quite ugly."),
	TEXT("You: Um... Thanks?..."),
	TEXT("Dentist: You're welcome."),
	TEXT("Dentist: I can help fix you up but I'll need you to do something for me before I do so."),
	TEXT("You: What can I help you with?"),
	TEXT("Dentist: The dentist fee is very expensive. But I will make an exception for you. All you need to do is promote how great this place is by talking to 3 people. Once you do that, come back and I'll fix you up."),
	TEXT("You: Okay."),
	CUSTOM5(function(dentistDialogue) {
	global.dentist = 2;
	dentistDialogue.next();
	})
];

global.topics[$ "Dentist2"] = [
	TEXT("Dentist: Have you finished promoting?"),
	TEXT("You: No.")
];

//////////////////////////////////////////////////////// Dentist Promote

global.topics[$ "Dentist Promote"] = [
	TEXT("You: I finished promoting."),
	TEXT("Dentist: Great, let's get started then."),
	CUSTOM10(function(fade) {
	instance_create_depth(0, 0, -1000000, obj_fade3);
	fade.next();
	}),
	TEXT("You: Thanks!"),
	TEXT("Dentist: You're welcome. Have a great day and don't forget to smile to show off my work."),
	CUSTOM9(function(dentistPromoteDialogue) {
	global.dentistPromoteGeneral = 1;
	global.student1General = 1;
	dentistPromoteDialogue.next();
	})
];

//////////////////////////////////////////////////////// Dentist Promote General

global.topics[$ "Dentist PromoteG"] = [
	TEXT("Dentist: Nice smile you got there!")
];

//////////////////////////////////////////////////////// Dentist Promote NPCs
global.topics[$ "Promote1"] = [
	TEXT("You: Hi, there's a dentist building nearby. They offer great services!"),
	TEXT("NPC: Okay, thanks for letting me know."),
	CUSTOM6(function(promote1Dialogue) {
	global.promote1 = 1;
	global.dentistPromote += 1;
	show_debug_message(string(global.dentistPromote));
	promote1Dialogue.next();
	})
];

global.topics[$ "Promote1G"] = [
	TEXT("NPC: Thank you for letting me know about the dentist!")
];

global.topics[$ "Promote2"] = [
	TEXT("You: Hello, the dentist over there is really proficient!"),
	TEXT("NPC: Okay? I don't care."),
	CUSTOM7(function(promote2Dialogue) {
	global.promote2 = 1;
	global.dentistPromote += 1;
	show_debug_message(string(global.dentistPromote));
	promote2Dialogue.next();
	})
];

global.topics[$ "Promote2G"] = [
	TEXT("NPC: I told you I don't care.")
];

global.topics[$ "Promote3"] = [
	TEXT("You: Hey, you should check out the dentist. He's really nice and does good work!"),
	TEXT("NPC: Are you trying to say my teeth are ugly?!?!"),
	CUSTOM8(function(promote3Dialogue) {
	global.promote3 = 1;
	global.dentistPromote += 1;
	show_debug_message(string(global.dentistPromote));
	promote3Dialogue.next();
	})
];

global.topics[$ "Promote3G"] = [
	TEXT("NPC: You are the ugly one!")
]; 

//////////////////////////////////////////////////////////////////////////////////////////////////////////////// ZONE 2

//////////////////////////////////////////////////////// NPC2 (Failed Student 2)

global.topics[$ "NPC2"] = [
	TEXT("You: Hello!"),
	TEXT("Failed Student 2: Hi."),
	TEXT("You: Can I pass through?"),
	TEXT("Failed Student 2: No"),
	TEXT("You: Why not?"),
	TEXT("Failed Student 2: Because I don't like how your clothes look."),
	TEXT("You: Okay... So?"),
	TEXT("Failed Student 2: You may have noticed two buildings on the way here. Those are clothing stores. Go shop for new clothes, what you're wearing right now sucks."),
	TEXT("You: What does this have to do with getting through?"),
	TEXT("Failed Student 2: Aren't you envious of those that look better than you? Well, if I looked like you, I would be. So if you want to get past me, look better."),
	CUSTOM11(function(student2Dialogue) {
	global.student2 = 1;
	student2Dialogue.next();
	})
];

global.topics[$ "NPC2General"] = [
	TEXT("Failed Student 2: Go and shop for better clothes.")
];

global.topics[$ "NPC2Final"] = [
	TEXT("Failed Student 2: Good luck, and remeber to live this experience with your own pace.")
];

global.topics[$ "NPC2Lyst"] = [
	TEXT("Failed Student 2: I see you changed your clothes, but you still look ugly. Go and get better clothes."),
	CUSTOM16(function(lystJournal) {
	global.buyLystQuest = 1;
	lystJournal.next();
	})
];

global.topics[$ "NPC2passY"] = [
	TEXT("Failed Student 2: Good, you look so much better now."),
	TEXT("Failed Student 2: I failed because I wasn't able to work well with my team."),
	TEXT("Failed Student 2: I was alway stuck in my own head about how envious I was of those who could speak their mind and get along well with others so quickly."),
	TEXT("Failed Student 2: Thinking maybe if I changed my appearance, people would like me more. How vain it was to think so. I later realized it's okay to be reserved. It's okay that I am not good at talking with people right now, the important thing is to get better at doing so."),
	TEXT("Failed Student 2: There will be times when you'll be envious of people who had a different social upbringing than you. Who can do things so much better than you. Remember, it's okay to not leap and just get to that level at your own pace. This college experience is yours to take in and grow from."),
	TEXT("Failed Student 2: Best of luck to you.")
];

//////////////////////////////////////////////////////// NPC SHOP

global.topics[$ "NPCSHOP"] = [
	TEXT("NPC: We are in line because this store is very popular. You should shop here instead of Lyst.")
];

//////////////////////////////////////////////////////// SEGGU

global.topics[$ "Seggu"] = [
	TEXT("Store Clerk: Hello!"),
	TEXT("You: Hi! I would like to purchase new clothes."),
	TEXT("Store Clerk: Oh great, I'll be glad to help you change those ugly clothes you're currently wearing."),
	TEXT("You: Okay... thanks."),
	TEXT("Store Clerk: The price is to promote this place to customers from the store next door."),
	TEXT("You: Um... Ok?..."),
	TEXT("Store Clerk: Here is our selection of clothes."),
	CUSTOM12(function(segguGeneral) {
		// global.segguGeneral = 1;
		obj_player.image_alpha = 0;
		room_goto(rm_outfitSeggu);
		segguGeneral.next();
	})
];

global.topics[$ "SegguOutfit"] = [
	TEXT("Store Clerk: Good choice, you look so much better now."),
	TEXT("You: Thank you!"),
	TEXT("Store Clerk: You're welcome. Now go and promote this place."),
];

global.topics[$ "SegguG"] = [
	TEXT("Store Clerk: Have you finished promoting?"),
	TEXT("You: No.")
];

global.topics[$ "SegguG2"] = [
	TEXT("Store Clerk: Looking good!")
];

global.topics[$ "SegguP"] = [
	TEXT("You: I finished promoting."),
	TEXT("Store Clerk: Great! Enjoy your new clothes and have a nice day!"),
	CUSTOM(function(seggu) {
		global.buySeggu = 1;
		global.segguPromote = 0;
		seggu.next();
	}),
];

//////////////////////////////////////////////////////// LYST

global.topics[$ "Lyst"] = [
	TEXT("Store Clerk: Hello! How may I help you?"),
	TEXT("You: Hi! I am looking for a new outfit."),
	TEXT("Store Clerk: You came to the right place! Let me show you the available options."),
	CUSTOM2(function(lyst) {
		/*  global.buySeggu = 0;
		global.buyLyst = 1;
		*/
		obj_player.image_alpha = 0;
		room_goto(rm_outfitLyst);
		lyst.next();
	}),
];
global.topics[$ "LystOutfit"] = [
	TEXT("Store Clerk: Good choice! Have a good day!")
];

global.topics[$ "LystG"] = [
	TEXT("Store Clerk: Those clothes sure fit you!")
];

global.topics[$ "LystG2"] = [
	TEXT("Store Clerk: Yes?")
];

//////////////////////////////////////////////////////// LYST CUSTOMER

global.topics[$ "LystCustomer"] = [
	TEXT("You: Hi, don't you think my clothes look great?"),
	TEXT("Customer: Yeah, they look nice. Where did you get them?"),
	TEXT("You: I got them at Seggu. You should shop there instead. The clothes they sell are a must have."),
	TEXT("Customer: They do look good, I'll go there now. Thanks."),
	TEXT("You: You're welcome!"),
	CUSTOM13(function(segguPromote) {
		global.segguPromote = 1;
		global.lystCustomer = 1;
		segguPromote.next();
	}),
];

global.topics[$ "LystCustomerG"] = [
	TEXT("Customer: Those clothes from Seggu look really good!")
];

//////////////////////////////////////////////////////////////////////////////////////////////////////////////// ZONE 3

//////////////////////////////////////////////////////// NPC3 (Failed Student 3)

global.topics[$ "NPC3"] = [
	TEXT("You: Hello!"),
	TEXT("Failed Student 3: Hi."),
	TEXT("You: Can I pass through?"),
	TEXT("Failed Student 3: No."),
	TEXT("You: Why not?"),
	TEXT("Failed Student 3: Because you can't even see."),
	TEXT("You: What do you mean?"),
	TEXT("Failed Student 3: The world is so blurry to you."),
	TEXT("You: What does this have to do with getting through?"),
	TEXT("Failed Student 3: How will you make it anywhere if you can't see? Go to the building nearby. They can give you glasses."),
	CUSTOM14(function(student3Dialogue) {
	global.student3 = 1;
	student3Dialogue.next();
	})
];

global.topics[$ "NPC3General"] = [
	TEXT("Failed Student 3: Go and buy a pair of glasses.")
];

global.topics[$ "NPC3Final"] = [
	TEXT("Failed Student 3: Good luck, and don't forget to respect the opinion of other persons.")
];

global.topics[$ "NPC3passY"] = [
	TEXT("Failed Student 3: Good, now that you can see, you're less likely to face the problem I did."),
	TEXT("Failed Student 3: I failed because I was blinded and stubborn. I wasn't able to look past my current self."),
	TEXT("Failed Student 3: I was shocked by the reactions of others on how they see my actions and words."),
	TEXT("Failed Student 3: I couldn't see the impact my personality had towards others."),
	TEXT("Failed Student 3: Remember, it's okay to be you, but if your personality can be seen as offensive, try to tone it down and respect that others may have a different point of view."),
	TEXT("Failed Student 3: Best of luck to you."),
];

//////////////////////////////////////////////////////// Optometrist

global.topics[$ "Optometrist"] = [
	TEXT("You: Hello!"),
	TEXT("Optometrist: Hi!"),
	TEXT("You: I would like a pair of glasses."),
	TEXT("Optometrist: Oh great, I'll be glad to help you."),
	TEXT("You: Thanks!"),
	TEXT("Optometrist: However, I can't let you have any of our glasses until you fill out this survey."),
	TEXT("You: Okay, here you go."),
	TEXT("Optometrist: Thank you, now one more thing."),
	TEXT("You: What is it?"),
	TEXT("Optometrist: I also need you to accept notifications from our store of new products. Are you willing to do so?"),
	TEXT("You: Um... Ok?..."),
	TEXT("Optometrist: Thank you, Have a great day!"),
	CUSTOM15(function(optometrist) {
	global.optometrist = 1;
	optometrist.next();
	})
];

global.topics[$ "OptometristG"] = [
	TEXT("Optometrist: That is a cool looking pair of glasses!")
];