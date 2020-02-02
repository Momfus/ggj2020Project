///@function sc_draw_rectangle_width(x1, y1, x2, y2, line_width)
///@description		- Dibuja un rectangulo (solo su borde) con el ancho y color señalado
///@param {int}	x1
///@param {int}	y1
///@param {int}	x2
///@param {int}	y2
///@param {int}	lineWidth
///@return {void}


var l_x1 = argument0,
	l_x2 = argument2,
	l_y1 = argument1,
	l_y2 = argument3,
	l_lineWidth = argument4;
	
draw_line_width(l_x1 - l_lineWidth * 0.5, l_y1, l_x2 + l_lineWidth * 0.5, l_y1, l_lineWidth);

draw_line_width(l_x2, l_y1 + l_lineWidth * 0.5, l_x2, l_y2 - l_lineWidth * 0.5, l_lineWidth);

draw_line_width(l_x1 - l_lineWidth * 0.5, l_y2, l_x2 + l_lineWidth * 0.5, l_y2, l_lineWidth);

draw_line_width(l_x1, l_y1 + l_lineWidth * 0.5, l_x1, l_y2 - l_lineWidth * 0.5, l_lineWidth);