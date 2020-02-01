///@function sc_round_decimal_n(value, increment)
///@description Permite redondear los números a potenciales decimales (2.5492 a 2.5 en vez de 2 o 3);
///@param {real} value
///@param {real} increment
///@return {real} newValue

var l_value = argument0,
	l_increment = argument1;

var l_newValue = ( round( l_value / l_increment ) * l_increment );

return l_newValue;

// Nota: Usado para obtener la cantidad correcta de pixeles al agrandar el tamaño de la cámara con respecto a la escala