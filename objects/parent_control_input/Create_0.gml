/// @description Iniciar valores inputs

#region Atributos / Variables


__inputMoveIntensity = 1;
__currentPlayer = noone;

#endregion

#region Tipo de controles

enum e_input {
	
	noInput,
	keyboard,
	gamepad
	
}

__currentInput = e_input.keyboard;
__gamepadIsConnect = false;


#endregion


sc_start_input();