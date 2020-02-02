///@function sc_animation_is_frame_ext(frame_to_check, image_speed, current_image_index, sprite_to_check)
///@description Sirve para saber si se está en la sub-imagen (frame) especifico indicado de la imagen con la velocidad indicada.
///@param {int} frameToCheck
///@param {real} imageSpeed
///@param {real} currentImageIndex
///@param {asset_sprite} spriteToCheck
///@return {boolean} is_frame


var l_frameToCheck = argument0,
	l_imageSpeed = argument1,
	l_currentImageIndex = argument2,
	l_speed = sprite_get_speed(argument3);
	


var l_isFrame = ( l_currentImageIndex >= (l_frameToCheck - (l_imageSpeed / l_speed) ) and ( l_currentImageIndex < l_frameToCheck + 1 ) );
	
return l_isFrame;