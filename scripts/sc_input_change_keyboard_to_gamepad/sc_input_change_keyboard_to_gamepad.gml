///@function sc_input_change_keyboard_to_gamepad()
///@description Cambia el objeto qeu tenga asignado un teclado como input a un joystick
///@return {}

with( __currentPlayer ){

	// Cambiar Input
	__inputID = sc_player_set_input( control_input_gamepad );
	__inputID.__gamepadIsConnect = true;


}

instance_destroy();