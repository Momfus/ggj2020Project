///@function sc_set_guiSurfaceSize(forceGuiWidth?, forceGuiHeight?)
///@description Setea el tamaño del GUi del juego y lo guarda en las respectivas variables globales para tener en cuenta a futuro. En caso de no enviar un tamaño especifico, se setea por defecto según el tamaño del display que lo reproduce
///@param {int} forceGuiWidth (opcional) - Por si se quiere usar un valor particular de ancho de GUI que no sea del display
///@param {int} forceGuiHeight (opcional)
///@return {void}

__guiWidthtOld = global.g_guiWidth;

if( argument_count > 0 ) {
	
	global.g_guiWidth = argument[0];
	global.g_guiHeight = argument[1];
	
	
} else {
	
	global.g_guiWidth = display_get_width();
	global.g_guiHeight = display_get_height();
	
}

global.g_guiHalfWidth = global.g_guiWidth * 0.5;
global.g_guiHalfHeight = global.g_guiHeight * 0.5;

// Seteo de valores usados para oldFilter
global.surface_width = global.g_guiWidth;
global.surface_height = global.g_guiHeight

surface_resize(application_surface, global.surface_width, global.surface_height);


// Seteo del gui
display_set_gui_size(global.g_guiWidth, global.g_guiHeight );

// Para recolocar elementos de la gui
global.g_guiAspectRatioNew = global.g_guiWidth / __guiWidthtOld;
event_perform(ev_other, ev_user0);