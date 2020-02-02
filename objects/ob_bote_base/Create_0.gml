/// @description Inicio Atributos

// Parent
event_inherited();


// Propio

__spriteHalfHeight = sprite_height * 0.5;

// Collision Box
var l_collisionWidth = (bbox_right - bbox_left) + 1,
	l_collisionHeight = (bbox_bottom - bbox_top) + 1;

__collisionSolidId = sc_create_collision_solid_1px_move(bbox_left, bbox_top, l_collisionWidth, l_collisionHeight );




// Maximo y minimo del movimiento
__oscilacionPos = 0;

__yPosOrigin = y;
__yPosDif = 15;