/// @description Comprobar uso de menu

if( __canUseMenu ) {

	// Comenzar nivel 1
	
	if( __inputID.__actionAttackMainRelease) {
	
		instance_destroy(__inputID);
		room_goto(rm_level_1);
		
	}
	
}