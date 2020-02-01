///@function sc_camera_create(camera_type)
///@description Crea una camara para usar en el juego y lo asigna a la variable global utilizada para la misma
///@param {object} camera_type
///@return {void}

if( global.g_currentCamera == undefined ){
	
	global.g_currentCamera = sc_instance_create_singleton( 0, 0, argument0 );
	
} else {
	
	show_debug_message("Ya existe una cámara creada asignada a 'global.g_currentCamera'")
	
}