///@function sc_cameraUpdateActivateRegion()
///@description Actualiza la posición región y la zona en que se activan objetos en caso de estar dentro de lo señalado
///@return {void}

// Coordenadas de la vista usada
__viewX = camera_get_view_x( view_camera[0] );
__viewY = camera_get_view_y( view_camera[0] );



// Solo actualizar cuando se mueve la cámara
if ( __viewX != __viewPreviousX || __viewY != __viewPreviousY ) {

	__viewWidthRelative = __viewX + __viewWidth;
	__viewHeightRelative = __viewY + __viewHeight;
	sc_cameraUpdateRegionActualPosition();
	
	// Activar las instancias que estan dentro de la view
	instance_activate_region( global.g_viewXstart, global.g_viewYStart, global.g_viewXend, global.g_viewYend, true )

}

sc_cameraUpdateRegionPreviousPosition();