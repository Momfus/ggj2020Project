/// @description Movimiento bote

// Vertical
__oscilacionPos = sc_wrap(__oscilacionPos + 0.05, 0, 359);

var l_mult = sin(__oscilacionPos);

y = __yPosOrigin + __yPosDif * l_mult;

__collisionSolidId.__velRelativeY = y - yprevious;
