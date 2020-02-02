///@function sc_game_start()
///@description Configurar lo incial para el juego
///@return {void}

#region Configuracioens generales

	randomize();
	surface_depth_disable(true); // Al estar considerado el juego como 100% 2D (caso futuro de usar algo 3D hay que sacarlo y usarlo en donde sea necesario)
	math_set_epsilon(0.1);

#endregion

enum e_state_player {
	
	noControl,	// 0
	idle,		// 1
	move,		// 2
	repair,		// 3
	water		//4
	
	}


global.g_oneSecond = game_get_speed(gamespeed_fps);
global.g_currentCamera = undefined;


// Usado para los rooms usados para nivel y sectores (no cuenta menues pero podria usarse)
sc_layerCreateArrayName(); 

#region Creación de cámara y seteo de views/ports

__viewPortWidth = 1280;
__viewPortHeight = 720;

sc_camera_create( ob_camera_follow_target )

#endregion

#region Instancias singleton

	
	sc_instance_create_singleton(0, 0, control_display);
	
	sc_instance_create_singleton( 0, 0, control_test );

#endregion

// Ir al room que comienza el juego
room_goto(__roomStart);