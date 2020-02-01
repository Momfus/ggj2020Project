/// @description Movimiento de cámara

// Si no existe el target, no se hace el movimiento
if not( instance_exists(__camTarget) ){ exit; }


// Seguir al target con una interpolación de 10% (suave)
x = lerp(x, __camTarget.x, __camInterpolationSpeed );
y = lerp(y, __camTarget.y + __camTargetOffsetY, __camInterpolationSpeed );

// Adptación según el tamaño del port la ubicación de la cámara
x = sc_round_decimal_n(x, ( 1 / __camScale ) );
y = sc_round_decimal_n(y, ( 1 / __camScale ) );

x = round ( clamp( x, __viewWidthHalf + SCREENSHAKE_OFFSET, room_width - __viewWidthHalf - SCREENSHAKE_OFFSET) );
y = round ( clamp( y, __viewHeightHalf + SCREENSHAKE_OFFSET, room_height - __viewHeightHalf - SCREENSHAKE_OFFSET ) );

if( __camShakeMagnitudRemain ) {
	
	#region screenshake ON
	
	x += random_range( -__camShakeMagnitudRemain, __camShakeMagnitudRemain);
	y += random_range( -__camShakeMagnitudRemain, __camShakeMagnitudRemain);
	__camShakeMagnitudRemain = max( 0, __camShakeMagnitudRemain - ( (1/__camShakeLength) * __camShakeMagnitudeMax ) );
	
	if !( __camShakeMagnitudRemain ) { __camShakePriority = 0; }
	
	#endregion
	
} else {
	
	#region screenshake OFF
	
	// Prevenir que la cámara salga del tamaño del room (evitando errores visuales)
	x = clamp( x, __viewWidthHalf, room_width - __viewWidthHalf );
	y = clamp( y, __viewHeightHalf, room_height - __viewHeightHalf );
	
	#endregion
	
}



// Movimiento de la cámara
camera_set_view_pos( view_camera[0], round(x - __viewWidthHalf), round(y - __viewHeightHalf) );