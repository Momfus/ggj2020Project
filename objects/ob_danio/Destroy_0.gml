/// @description 
var l_cantidadDanio = 0.005,
	l_score = 5;

if( sprite_index == sp_danio_1 ){ 
	l_cantidadDanio = 0.01; 
	l_score = 10;
}

with( control_level ) {

	__lifeBoteCurrent = clamp( __lifeBoteCurrent + l_cantidadDanio * 2, 0, __lifeBoteMax );
	__score += l_score;

}
