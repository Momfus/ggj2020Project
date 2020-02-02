/// @description 
var l_cantidadDanio = 0.005;

if( sprite_index == sp_danio_1 ){ l_cantidadDanio = 0.01; }

with( control_level ) {

	__lifeBoteCurrent = clamp( __lifeBoteCurrent + l_cantidadDanio * 2, 0, __lifeBoteMax );

}
