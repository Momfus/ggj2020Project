///@function sc_cameraUpdateRegionActualPosition()
///@description Actualizar la posición de los extremos de la cámara con una región extra alrededor
///@return {void}

// NOTA: La región extra sirve para tener un campo de activación y desactivación, evita efecto de parpadeo dentro de lo que ve el jguador.


// Crear rectangulo alrededor de la vista.
global.g_viewXstart = max(__viewX - __viewRegionOffset, 0 ); // Nunca veremos en un punto negativo de la vista aun si el margen extra lo indica, asi que se setea un minimo de cero.
global.g_viewYStart = max( __viewY - __viewRegionOffset, 0 );
global.g_viewXend = min (__viewWidthRelative + __viewRegionOffset, room_width );
global.g_viewYend = min (__viewHeightRelative + __viewRegionOffset, room_height );

