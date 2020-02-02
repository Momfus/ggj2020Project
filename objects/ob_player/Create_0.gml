/// @description Inicio atributos

#region Atributos Generales

	__bodyCenterOffsetY = -48;

	__inputID = sc_player_set_input(control_input_keyboard);
	
	#region Corroborar si ya tiene conectado un joystick al empezar

		var l_gpTotal = gamepad_get_device_count(),
			l_isGamePadConnect = false;
	
		for (var i = 0; i < l_gpTotal; i++;) {
	
			if( gamepad_is_connected(i) ) {
				l_isGamePadConnect = true; 
				break;
			}
   
		}


		if( l_isGamePadConnect ) {
			alarm[0] = 2;
		}

	#endregion
	
	__hsp = 0;
	__vsp = 0;
	__grvBase = 0.3;
	__grv = 0.3;
	__speed = 4;
	
	__canJump = 0;
	
#endregion

#region Propiedades sprite

	__spriteHalfWidth = sprite_width * 0.5;

	image_speed = 0.5;

#endregion

#region Manejo estado jugador

	
	__stateCurrent_step = state_step_player_idle;
	__stateCurrent = e_state_player.idle;

#endregion
