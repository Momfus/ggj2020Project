/// @description Datos de prueba a mostrar



if( global.g_test ) {
	
	var l_aRatio = image_xscale;
	
	if( instance_exists(parent_control_input) ) {
		
		draw_sprite_ext(__testInputSpriteIndex, parent_control_input.__currentInput, 0, 0, 2 * l_aRatio, 2 * l_aRatio, 0, -1, 1);
	
	}

}