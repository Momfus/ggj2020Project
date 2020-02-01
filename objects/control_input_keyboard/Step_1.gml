/// @description Verificar inputs

if ( __gamepadIsConnect and sc_gamepadAnyButtonPress() ){

	sc_input_change_keyboard_to_gamepad();
	exit;
	
}

sc_get_input_keyboard();
