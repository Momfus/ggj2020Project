///@function sc_camera_set_follow_target(target, interpolation_speed, targetOffsetY?)
///@description Crea una camara que sigue a un objetivo a cierta velocidad indicada
///@param {object} target
///@param {real} interpolation_speed Valor entre 0 y 1
///@param {int} targetOffsetY? : Correción sobre el centro del objetivo a seguir
///@return {void}

#region Iniciar atributos locales

var l_target = argument[0],
	l_interpolationSpeed = argument[1],
	l_targetOffsetY = 0;
	
	if( argument_count > 2 ){

		l_targetOffsetY = argument[2];
	
	}

#endregion

#region Creación de la cámara

if( global.g_currentCamera != undefined ){ instance_destroy(global.g_currentCamera); }

global.g_currentCamera = sc_instance_create_singleton( 0, 0, ob_camera_follow_target );

#endregion

#region Setear valores indicados a la cámara

with( global.g_currentCamera ){

	__camTarget = l_target;
	__camInterpolationSpeed = l_interpolationSpeed;
	
	__camTargetOffsetY = l_targetOffsetY;
}


#endregion

