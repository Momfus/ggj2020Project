/// @description Reducir vida bote

var l_cantidadDanio = 0.005;

if( sprite_index == sp_danio_1 ){ l_cantidadDanio = 0.01; }

with( control_level ) {

	__lifeBoteCurrent = clamp( __lifeBoteCurrent - l_cantidadDanio, 0, __lifeBoteMax );
	event_user(11);
}

other.alarm[0] = global.g_oneSecond * random_range(0.25, 0.5);