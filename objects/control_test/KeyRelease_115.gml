/// @description Cambiar a fullscreen

with( control_display ){

	if( window_get_fullscreen() ) {

		window_set_fullscreen(false);
		sc_set_guiSurfaceByWindowSize(__guiDefaultWidth, __guiDefaultHeight );
	
		

	} else {
		
	
		window_set_fullscreen(true);
		sc_set_guiSurfaceByWindowSize();
		
	}

}
