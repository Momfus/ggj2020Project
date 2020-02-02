/// @description Movimiento bote

if( !global.g_levelGameOver ) {
	
	// Vertical
	__oscilacionPos = sc_wrap(__oscilacionPos + 0.05, 0, 359);

	var l_mult = sin(__oscilacionPos);

	y = __yPosOrigin + __yPosDif * l_mult;

	__collisionSolidId.__velRelativeY = y - yprevious;

} else {

	image_speed = 0;
	image_angle = sc_approach(image_angle, 45, 0.01) ;
	
	y = sc_approach( y, room_height, 0.25 )
	
}