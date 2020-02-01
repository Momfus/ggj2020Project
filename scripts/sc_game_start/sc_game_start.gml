///@function sc_game_start()
///@description Configurar lo incial para el juego
///@return {void}

#region Configuracioens generales

	randomize();
	surface_depth_disable(true); // Al estar considerado el juego como 100% 2D (caso futuro de usar algo 3D hay que sacarlo y usarlo en donde sea necesario)
	math_set_epsilon(0.01);

#endregion


global.g_oneSecond = game_get_speed(gamespeed_fps);
global.g_currentCamera = undefined;

#region Creación de cámara y seteo de views/ports

__viewPortWidth = 1280;
__viewPortHeight = 720;


#endregion

sc_layerCreateArrayName();

#region Instancias singleton

	sc_instance_create_singleton( 0, 0, control_test );

#endregion

// Ir al room que comienza el juego
room_goto(__roomStart);