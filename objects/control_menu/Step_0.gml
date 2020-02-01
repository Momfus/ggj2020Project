/// @description Comprobar uso de menu

if( __canUseMenu ) {

	// Comenzar nivel 1
	if( keyboard_check_pressed(vk_anykey) ) {
	
		room_goto(rm_level_1);
		
	}
	
}