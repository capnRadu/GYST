/// @description Shader alpha

if (global.dentistPromoteGeneral == 1 && global.buySeggu == 0) {
	valueAlpha = 0.8;	
}

if (global.buySeggu == 1 && global.optometrist == 0) {
	valueAlpha = 0.6;	
}

if (global.optometrist == 1) {
	valueAlpha = 0;	
}