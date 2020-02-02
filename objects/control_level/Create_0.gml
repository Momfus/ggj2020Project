/// @description Iniciar atributos

// Atributos padre
event_inherited();


// Propios
__showJumpToWater = false;
global.g_levelGameOver = false;

__rotIcoBote = 22;
alarm[11] = global.g_oneSecond * 0.5;

__lifeBoteMax = 1;
__lifeBoteCurrent = 0.1// __lifeBoteMax;

// Reposicionar si al reiniciar el juego se cambia la resolución
sc_guiElements_reposition();

alarm[0] = global.g_oneSecond * irandom_range(1, 2);

__score = 0;
alarm[9] = global.g_oneSecond;

// aumento dificulta
alarm[8] = global.g_oneSecond *  10;
__dificultad = 1;