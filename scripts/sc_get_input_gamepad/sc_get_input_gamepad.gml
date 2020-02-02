///@function sc_get_input_gamepad()
///@description Obtiene el estado de las acciones del teclado
///@return {void}


#region Aciones del jugador

	#region Movimiento

	var l_axisLH =  ceil(gamepad_axis_value(0, gp_axislh)),
		l_axisLV =  gamepad_axis_value(0, gp_axislv);
		
	__inputMoveIntensity = point_distance(0, 0, l_axisLH, l_axisLV);

	// Movimineto del jugador
	__moveRight = max( 0, l_axisLH);
	__moveLeft = abs( min( 0, l_axisLH ) );
	__moveUp = abs( min( 0, l_axisLV) );
	__moveDown = max( 0, l_axisLV);
	
	// Usados para el movimiento del cursor
	__moveCursorH = gamepad_axis_value(0, gp_axisrh);
	__moveCursorV = gamepad_axis_value(0, gp_axisrv);
	
	
	if( __moveCursorH != 0 || __moveCursorV != 0 ){ 
		
		//@TOFIX: Ver si hay una mejor manera de arreglar este redondeo
		if( __moveCursorH > 0.99 ){ __moveCursorH = 1; }
		if( __moveCursorV < -0.99 ){ __moveCursorV = -1; }
		__isMoveCursor = true; 
		
	}
	else{ 
		__isMoveCursor = false; 
	}
	
	#endregion
	
	#region Acciones generales
	
	__actionAttackMain = gamepad_button_value(0, gp_face1);
	__actionAttackSecondary = gamepad_button_value(0, gp_face3);
	
	__actionAttackMainRelease = gamepad_button_check_released(0, gp_face1);
	__actionAttackSecondaryRelease = gamepad_button_check_pressed(0, gp_face3);
	
	__actionStart = gamepad_button_value(0, gp_start );
	__actionStartRelease = gamepad_button_check_released(0, gp_start );
	
	#endregion

#endregion

   