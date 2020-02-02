///sc_effect_screenShake(magnitude, frame_lenght, priority, distance_to_player?)
///@description							Genera una sacudida en pantalla en la cámara actual del jugador
///@param {int}		magnitude			La intensidad máxima que tendra el temblor ( <= __camShakeOffset)
///@param {int}		time				Duración del temblor en segundos
///@param {int}		priority			Usado para saber en el caso que haya otro temblor (intentar usar valores chicos), mayor que cero debe ser.
///@param {int}		distance_to_player?	(opcional) Si no se recibe el argumento, el temblor se hace siempre. En caso de recibirse, se compara si la distancia del jugador al objeto que lo genero es menor para generar el efecto.
///@return {void}	

#region Verificar si esta lejos del jugador quien provoca el screenshake

	if( argument_count > 3 ){

		var l_distanceToPlayer = argument[3];
	
		if( distance_to_object( ob_player ) > l_distanceToPlayer ){ exit; }

	}


#endregion

#region Realizar screenshake

var l_magnitude = argument[0],
	l_time = argument[1],
	l_priority = argument[2];

with( parent_camera ) {
	
	if( l_priority > __camShakePriority ){ 
		
		
		__camShakeMagnitudeMax		= l_magnitude; // La intensidad máxima que tendra el temblor ( <= SCREENSHAKE_OFFSET)
		__camShakeMagnitudRemain	= l_magnitude; // El que efectivamente realiza el temblor y va atenuando desde la magnitud máxima hasta cero (mismo valor inicial que __camShakeMagnitudeMax)
		
		__camShakeLength			= l_time * global.g_oneSecond;
		__camShakePriority			= l_priority;
	
	}
}

#endregion
