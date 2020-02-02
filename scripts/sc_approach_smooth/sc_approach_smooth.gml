///@function sc_approach_smooth(current, target, percent)
///@description Aproxima el valor "current" al "target" con el porcentaje señalado (entre 0 y 1) para hacer acercamientos suaves.
///@param {real} current
///@param {real} target
///@param {real} percent (>0 && <1)
///@return {real} newCurrent

var l_current = argument0,
	l_target = argument1,
	l_percent = argument2;

return (l_current + (l_target - l_current) * l_percent);
	