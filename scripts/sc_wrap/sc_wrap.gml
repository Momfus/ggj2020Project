///@function sc_wrap(value, min, max)
///@description Devuelve el valor rodeado a los valores minimo o máximo, si los supera se envuelve en estos redondeando
/// @param {real} value
/// @param {real} min
/// @param {real} max
///@return {real} newValue


if (argument0 mod 1 == 0) {
	
	while (argument0 > argument2 || argument0 < argument1) {
		
		if (argument0 > argument2){
			
			argument0 += argument1 - argument2 - 1;
		
		} else if (argument0 < argument1) {
			
			argument0 += argument2 - argument1 + 1;
			
		}
	}
	
	return(argument0);
}

else {
	
	var l_oldValue = argument0 + 1;
	
	while (argument0 != l_oldValue) {
		
		l_oldValue = argument0;
		
		if (argument0 < argument1) {
			
			argument0 = argument2 - (argument1 - argument0);
			
		} else if (argument0 > argument2) {
			
			argument0 = argument1 + (argument0 - argument2);
			
		}
			
	}
	
	return(argument0);
	
	
}