/// @description generar danio

var l_xRandom = irandom_range(0, image_xscale);
var l_yRandom = irandom_range(1, image_yscale) - 1;

var l_instance = instance_create_layer( x + __spriteWidthOriginal * l_xRandom, y - __spriteWidthOriginal * l_yRandom , global.g_arrayLayerNames[e_layer.actors_top], ob_danio);

var l_intentos = 10;
with( l_instance ) {
	while( place_meeting(x, y, ob_danio) ) {
		
		x = other.x + other.__spriteWidthOriginal * irandom_range(0, image_xscale);
		y = other.y + other.__spriteWidthOriginal * irandom_range(1, image_yscale) - 1;
		l_intentos--;
		if( l_intentos <= 0 ) {
			
			break;
		
		}
	}
}
