///@function sc_approach(current, target, amount)
///@description Aproxima el valor "current" al "target" en la proporción "amount" indicada
///@param {real} current
///@param {real} target
///@param {real} amount
///@return {real} newCurrent

var l_current = argument0,
	l_target = argument1,
	l_amount = argument2;

if (l_current < l_target) {
	
    return min(l_current + l_amount, l_target); 
	
} else {
	
    return max(l_current - l_amount, l_target);
	
}
