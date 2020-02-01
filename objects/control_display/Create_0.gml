/// @description Inicio atributos

persistent = true;

__guiDefaultWidth = control_game.__viewPortWidth;
__guiDefaultHeight =  control_game.__viewPortHeight;

__guiDefaultHalfWidth = __guiDefaultWidth * 0.5;
__guiDefaultHalfHeight = __guiDefaultHeight * 0.5;

__guiWidthtOld = __guiDefaultWidth; // Se toma para los calculos el ancho y así sacar proporción

global.g_guiWidth = __guiDefaultWidth;
global.g_guiHeight = __guiDefaultHeight;




// Considerar si comienza en pantalla completa antes de setear.
if( window_get_fullscreen() ) {

	sc_set_guiSurfaceByWindowSize()

} else {

	sc_set_guiSurfaceByWindowSize(__guiDefaultWidth, __guiDefaultHeight)
	
}

