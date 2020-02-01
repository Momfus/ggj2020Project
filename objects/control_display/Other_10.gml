/// @description Recolocar elementos gui en pantalla

with( parent_guiElements ){

	x *= global.g_guiAspectRatioNew;
	y *= global.g_guiAspectRatioNew;

	image_xscale *= global.g_guiAspectRatioNew;
	image_yscale *= global.g_guiAspectRatioNew;
	
	#region Si usa propiedades de tweenline
	
		if( __isTweenObject ) {
		
			__xStart *= global.g_guiAspectRatioNew;
			__xTarget *= global.g_guiAspectRatioNew;
		
		}
	
	#endregion
	
	event_perform(ev_other, ev_user0) // Para atributos especificos que no se comparten en general
	
}

