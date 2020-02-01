/// @description Inicio atributos
__camTarget = noone;

__viewWidth = camera_get_view_width( view_camera[0] );
__viewHeight = camera_get_view_height( view_camera[0] );

__viewWidthRelative = __viewWidth;
__viewHeightRelative = __viewHeight;

__camScale = ( view_wport[0] / __viewWidth ); // Proporción de la cámera con respecto al port.

__viewWidthHalf = (__viewWidth / 2);
__viewHeightHalf = (__viewHeight / 2);

__camInterpolationSpeed = 1; // Valores entre 0 y 1


__camTargetOffsetY = 0;

sc_camera_set_regionActivate(64);

#region Atributos de del efecto screenshake

	__camShakeLength = 0;

	__camShakeMagnitudeMax = 0; 
	__camShakeMagnitudRemain = 0;
	
	__camShakePriority = 0;


#endregion
