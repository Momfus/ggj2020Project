/// @description Posicionar la cámara al target

// Si no existe el target, se señala en el debug console y no se hace lo siguiente
if not( instance_exists(__camTarget) ){ 
	
	show_debug_message("La cámara [" + string(id) + "] no tiene target existente [" + object_get_name(__camTarget) );
	exit; 
	
}

// Posicionar
x = __camTarget.x;
y = __camTarget.y;
