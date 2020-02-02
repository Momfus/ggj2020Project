/// @description Mover jugador arriba

var l_boteVspd = __collisionSolidId.__velRelativeY;
var l_playerAbove = instance_place(x , y - abs(l_boteVspd), ob_player);


if(		l_playerAbove != noone and 
		(l_playerAbove.x + l_playerAbove.__spriteHalfWidth ) > x and
		(l_playerAbove.x - l_playerAbove.__spriteHalfWidth ) < ( x + sprite_width ) 
	) {

	l_playerAbove.y += l_boteVspd;
	
	// Forzar que no se quede pegado
	while( place_meeting(x, y, l_playerAbove) ) {
		if( l_playerAbove.y  <  y + __spriteHalfHeight ) {
		
			l_playerAbove.y--;
				
		} else {
		
			l_playerAbove.y++;
		
		}
	
	}
	
}

if( instance_exists(ob_danio)) {

	with(ob_danio) {
		
		y += l_boteVspd
		
	}
	
}

if( instance_exists(spawner_danio)) {

	with(spawner_danio) {
		
		y += l_boteVspd
		
	}
	
}