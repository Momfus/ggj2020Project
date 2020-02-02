///@function sc_get_input_keyboard()
///@description Obtiene el estado de las acciones del teclado
///@return {void}


#region Aciones del jugador

	#region Movimiento

	// Movimineto del jugador
	__moveRight = keyboard_check( ord("D") );
	__moveLeft = keyboard_check( ord("A") );
	__moveUp = keyboard_check( ord("W") );
	__moveDown = keyboard_check( ord("S") );
	
	#endregion
	
	#region Acciones generales
	
	__actionAttackMain =  keyboard_check( ord("J") );
	__actionAttackSecondary = keyboard_check( ord("K") );
	
	__actionAttackMainRelease =  keyboard_check_released( ord("J") );
	__actionAttackSecondaryRelease = keyboard_check_pressed( ord("K") );

	__actionStart = keyboard_check( vk_enter );
	__actionStartRelease = keyboard_check_released( vk_enter );

	#endregion

#endregion