/// @description Normal Action Stack

// Caida vertical
__vsp = (__vsp + __grv);
	
// Arreglar
 if( __inputID.__actionAttackSecondaryRelease 
	and __stateCurrent != e_state_player.water 
	and __stateCurrent != e_state_player.repair
	and !__isOnFire) {
 
	sc_player_state_change_to_fix();
	if not (audio_is_playing(sn_repair) ) {
		audio_sound_pitch(sn_repair, random_range(1.5, 1.25) )
		audio_play_sound(sn_repair, 5, false); 
	}
	
	 
 }
	
#region Salto
	
	__canJump = clamp( __canJump - 1, 0, 10  );

	if ( place_meeting(x, y + 1, parent_collision) or (__grv == 0 and (y == ob_water.y + 39) ) ) {
		__canJump = 10; // Delay
		
		if( __stateCurrent == e_state_player.water ) {
		
			y = ob_water.y + 38;
			__grv = __grvBase;
			sc_player_state_change_to_move();
		
		}
	}

	if ( __canJump > 0) && ( __inputID.__actionAttackMain) {
		__vsp = -7;	
	}

	
#endregion
	
#region Realizar movimiento horizontal / colision
	
	if (place_meeting(x + __hsp, y, parent_collision)) {
			
		while (!place_meeting( x+ sign(__hsp), y, parent_collision) ) {
			x = x + sign(__hsp);
		}
			
		__hsp = 0;
	}
		
	x = clamp( x + __hsp, __spriteHalfWidth, room_width - __spriteHalfWidth );
	
#endregion
	
#region Realizar movimiento vertical / colision
	
	if (place_meeting(x, y + __vsp, parent_collision)) {
			
		while (place_meeting(x, y + sign(__vsp), parent_collision)) {
			y = y - sign(__vsp);
		}
			
		
		__vsp = 0;
	}
	
	y = clamp( y + __vsp, sprite_height, room_height );
	
#endregion
	