/// @description Iniciar atributos

// Atributos padre
event_inherited();


// Propios


// Reposicionar si al reiniciar el juego se cambia la resolución
sc_guiElements_reposition();

alarm[0] = global.g_oneSecond * irandom_range(3, 5);