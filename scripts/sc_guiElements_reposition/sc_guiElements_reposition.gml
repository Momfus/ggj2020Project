///@function sc_guiElements_reposition()
///@description		Reposicionar y escalar los atributos necesarios que se necesitan de todo elemento de GUI al cambiar resolución.
///@return {void}


x *= global.g_guiAspectRatioNew;
y *= global.g_guiAspectRatioNew;


image_xscale *= global.g_guiAspectRatioNew;
image_yscale *= global.g_guiAspectRatioNew;
	
if( __isTweenObject ) {
	
	__xStart *= global.g_guiAspectRatioNew;
	__xTarget *= global.g_guiAspectRatioNew;
	
	__yStart *= global.g_guiAspectRatioNew;
	__yTarget *= global.g_guiAspectRatioNew;

}