/// @description 
if( !__isOnFire and other.sprite_index == sp_danio_1) {

	__effectFlashHurtAmount = 3;

	__isOnFire = true;
	sc_effect_screenShake(2, 1, 4);
	
	with(control_level) {
	
		__showJumpToWater = true;
		event_user(12);
	}

}